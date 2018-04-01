//
//  XENHConfigJSController.m
//  
//
//  Created by Matt Clarke on 09/09/2016.
//
//

#import "XENHConfigJSController.h"
#import "XENHResources.h"

@interface UBClient: NSObject

+ (id)sharedInstance;

- (NSString *)temporaryFile;
- (void)moveFile:(NSString *)file1 toFile:(NSString *)file2;
- (void)copyFile:(NSString *)file1 toFile:(NSString *)file2;
- (void)symlinkFile:(NSString *)file1 toFile:(NSString *)file2;
- (void)deleteFile:(NSString *)file;
- (NSDictionary *)attributesOfFile:(NSString *)file;
- (NSArray *)contentsOfDirectory:(NSString *)dir;
- (void)chmodFile:(NSString *)file mode:(mode_t)mode;
- (BOOL)fileExists:(NSString *)file;
- (BOOL)fileIsDirectory:(NSString *)file;
- (void)createDirectory:(NSString *)dir;

@end

#define REUSE @"configCell"

@interface XENHConfigJSController ()

@end

@implementation XENHConfigJSController

-(void)loadView {
    [super loadView];
    
    // Register the class for cells.
    [self.tableView registerClass:[XENHConfigJSCell class] forCellReuseIdentifier:REUSE];
}

-(BOOL)parseJSONFile:(NSString *)filePath {
    BOOL error = NO;
    _filePath = filePath;
    // This is the fun part!
    // Return YES if there were any issues.
    
    /*
        In the .js file, we can rely on the fact that each variable name is prepended by "var ", and suffixed with "=" with optional whitespace.
        Furthermore, a value is defined by being prefixed with "=" and optional whitespace, ending in ; with optional whitespace.
        A comment is defined by the prefix "//", with optional whitespace. It'll end with a newline.
        A full line is obviously ended with a newline, which may different per text editor.
     */
    
    NSMutableArray *data = [NSMutableArray array];
    
    /*
        In this dictionary, a datum is represented by:
        - key (var name)
        - value
        - comment
        - isBool
        - isNumber
     */
    
    // We will assume the file is UTF-8, since that's a nice standard.
    NSString* fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    
    // First, separate by new line
    NSArray* allLinedStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    for (NSString *line in allLinedStrings) {
        // Now, we parse this line on it's own, using the above criteria.
        // First stage is to pull whatever string is nestled between "var " and "=", then eliminate whitespace.
        NSString *key = @"";
        id value = nil;
        NSString *comment = @"";
        int isBool = 0;
        int isNumber = 0;
        int isFloat = 0;
        
        NSString *sub = @"";
        
        NSRange r1 = [line rangeOfString:@"var "];
        NSRange r2 = [line rangeOfString:@"="];
        NSRange rSub = NSMakeRange(r1.location + r1.length, r2.location - r1.location - r1.length);
        
        if (r1.location == NSNotFound) {
            // INVALID LINE!
            continue;
        }
        
        @try {
            sub = [line substringWithRange:rSub];
        } @catch (NSException *e) {
            error = YES;
            continue;
        }
        
        key = [sub stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        // XXX: Now, we can scan past "=" up until the ";" marker.
        r1 = [line rangeOfString:@";"];
        
        rSub = NSMakeRange(r2.location + r2.length, r1.location - r2.location - r1.length);
        
        @try {
            sub = [line substringWithRange:rSub];
        } @catch (NSException *e) {
            error = YES;
            continue;
        }
        
        value = [self JSValueToObjC:sub isBool:&isBool isNumber:&isNumber isFloat:&isFloat];
        
        // Finally, if a comment exists, run with it.
        if ([line rangeOfString:@"//"].location != NSNotFound) {
            rSub = NSMakeRange([line rangeOfString:@"//"].location, line.length - [line rangeOfString:@"//"].location);
            
            @try {
                sub = [line substringWithRange:rSub];
            } @catch (NSException *e) {
                error = YES;
                continue;
            }
            
            // Trim whitespace.
            sub = [sub stringByReplacingOccurrencesOfString:@"//" withString:@""];
            sub = [sub stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            
            comment = sub;
        }
        
        NSDictionary *dict = [[NSDictionary alloc] initWithObjects:@[key, value, comment, [NSNumber numberWithBool:isBool], [NSNumber numberWithBool:isNumber], [NSNumber numberWithBool:isFloat]] forKeys:@[@"key", @"value", @"comment", @"isBool", @"isNumber", @"isFloat"]];
        [data addObject:dict];
    }
    
    _dataSource = data;
    
    [self.tableView reloadData];
    
    return error;
}

-(id)JSValueToObjC:(NSString*)input isBool:(int *)isBool isNumber:(int*)isNumber isFloat:(int*)isFloat {
    // First, we need scrub off any whitespace prefix or suffix.
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    if ([input isEqualToString:@"true"]) {
        *isBool = 1;
        return [NSNumber numberWithBool:YES];
    } else if ([input isEqualToString:@"false"]) {
        *isBool = 1;
        return [NSNumber numberWithBool:NO];
    }
    
    // Next, handle for if the string is quoted.
    if ([input hasPrefix:@"\""] || [input hasPrefix:@"'"]) {
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\"'"]];
        return input; // It's a string value.
    } else {
        // Attempt to convert the string to a number.
        // First, check it's not a float value.
        *isNumber = 1;
        
        NSRange r1 = [input rangeOfString:@"."];
        if (r1.location != NSNotFound) {
            // Float
            *isFloat = 1;
            return [NSNumber numberWithFloat:[input floatValue]];
        } else {
            // Integer.
            return [NSNumber numberWithInt:[input intValue]];
        }
    }
}

-(NSString*)ObjCTypeToJSValue:(id)input isBool:(BOOL)isBool isNumber:(BOOL)isNumber isFloat:(BOOL)isFloat {
    NSString *output = @"";
    
    if (isBool) {
        BOOL value = [input boolValue];
        output = value ? @"true" : @"false";
    } else if (isNumber) {
        output = [NSString stringWithFormat:@"%@", input];
    } else {
        // As string.
        output = [NSString stringWithFormat:@"\"%@\"", input];
    }
    
    return output;
}

-(void)saveData {
    // We need to re-create the .js file from our stored datums, and also make a backup of the old config.js
    NSMutableString *data = [@"" mutableCopy];
    
    for (NSDictionary *datum in _dataSource) {
        // Reformat back into a string for saving.
        BOOL isBool = [[datum objectForKey:@"isBool"] boolValue];
        BOOL isNumber = [[datum objectForKey:@"isNumber"] boolValue];
        BOOL isFloat = [[datum objectForKey:@"isFloat"] boolValue];
        
        NSString *key = [datum objectForKey:@"key"];
        id value = [datum objectForKey:@"value"];
        NSString *comment = [datum objectForKey:@"comment"];
        
        NSString *valueAsString = [self ObjCTypeToJSValue:value isBool:isBool isNumber:isNumber isFloat:isFloat];
        NSString *fullComment = @"\n";
        
        if (comment && ![comment isEqualToString:@""]) {
            fullComment = [NSString stringWithFormat:@"// %@\n", comment];
        }
        
        [data appendFormat:@"var %@ = %@; %@", key, valueAsString, fullComment];
    }
    
    // Have full string, now we can save it out!
    
    // We're going to us UAUnbox here to ensure we get a nice saving going on.
    
    
    // First, back up original.
    NSString *newName = [NSString stringWithFormat:@"%@.(%@).bak", _filePath, [NSDate date]];
    
    //if ([[NSFileManager defaultManager] isReadableFileAtPath:_filePath])
        //[[NSFileManager defaultManager] copyItemAtURL:[NSURL fileURLWithPath:_filePath] toURL:[NSURL fileURLWithPath:newName] error:nil];
    if ([UBClient class]) {
        [[UBClient sharedInstance] copyFile:_filePath toFile:newName];
        [[UBClient sharedInstance] chmodFile:[_filePath stringByDeletingLastPathComponent] mode:0777];
    }
    
    NSError *error;
    BOOL succeed = [data writeToFile:_filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (!succeed){
        // Handle error here
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:[XENHResources localisedStringForKey:@"Error" value:@"Error"]
                                                     message:[XENHResources localisedStringForKey:@"Failed to write widget settings; check file permissions for this widget" value:@"Failed to write widget settings; check file permissions for this widget"]
                                                    delegate:nil
                                           cancelButtonTitle:[XENHResources localisedStringForKey:@"OK" value:@"OK"]
                                           otherButtonTitles:nil];
        [av show];
        
        NSLog(@"%@", error);
    } else {
        // Post about the change!
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/jsconfigchanged" object:nil];
        
        CFStringRef toPost = (__bridge CFStringRef)@"com.matchstic.xenhtml/jsconfigchanged";
        CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), toPost, NULL, NULL, YES);
    }
}

-(void)switchDidChange:(id)value withKey:(NSString *)key {
    // Value is an NSNumber bool.
    
    NSDictionary *object = [self datumWithIdentifier:key];
    NSMutableDictionary *dict = [object mutableCopy];
    [dict setObject:value forKey:@"value"];
    
    NSMutableArray *mutableDataSource = [_dataSource mutableCopy];
    NSInteger index = [_dataSource indexOfObject:object];
    [mutableDataSource replaceObjectAtIndex:index withObject:dict];
    
    _dataSource = mutableDataSource;
}

-(void)textFieldDidChange:(id)value withKey:(NSString *)key {
    // We can expect that it's string coming here.
    
    NSDictionary *object = [self datumWithIdentifier:key];
    NSMutableDictionary *dict = [object mutableCopy];
    
    BOOL isNumber = [[object objectForKey:@"isNumber"] boolValue];
    
    if (isNumber) {
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        NSNumber *myNumber = [f numberFromString:value];
    
        if (myNumber) {
            [dict setObject:myNumber forKey:@"value"];
        } else {
            [dict setObject:[NSNumber numberWithInt:0] forKey:@"value"];
        }
    } else {
        [dict setObject:value forKey:@"value"];
    }
    
    NSMutableArray *mutableDataSource = [_dataSource mutableCopy];
    NSInteger index = [_dataSource indexOfObject:object];
    [mutableDataSource replaceObjectAtIndex:index withObject:dict];
    
    _dataSource = mutableDataSource;
}

-(NSDictionary*)datumWithIdentifier:(NSString*)key {
    NSDictionary *result = nil;
    
    for (NSDictionary *dict in _dataSource) {
        if ([[dict objectForKey:@"key"] isEqualToString:key]) {
            result = dict;
            break;
        }
    }
    
    return result;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.navigationItem setTitle:[XENHResources localisedStringForKey:@"Widget Settings" value:@"Widget Settings"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XENHConfigJSCell *cell = [tableView dequeueReusableCellWithIdentifier:REUSE forIndexPath:indexPath];
    if (!cell) {
        cell = [[XENHConfigJSCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:REUSE];
    }
    
    // Configure the cell...
    NSDictionary *datum = [_dataSource objectAtIndex:indexPath.row];
    
    [cell setupWithDatum:datum];
    cell.delegate = self;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat commentHeight = 0;
    
    NSDictionary *datum = [_dataSource objectAtIndex:indexPath.row];
    NSString *comment = [datum objectForKey:@"comment"];
    
    if (comment && ![comment isEqualToString:@""]) {
        CGFloat width = self.tableView.frame.size.width/16.0*15.0;
        CGRect rect = [XENHResources boundedRectForFont:[UIFont systemFontOfSize:15] andText:comment width:width-30];
        
        commentHeight = rect.size.height + 10;
    }
    
    return 44.0 + commentHeight;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat commentHeight = 0;
    
    NSDictionary *datum = [_dataSource objectAtIndex:indexPath.row];
    NSString *comment = [datum objectForKey:@"comment"];
    
    if (comment && ![comment isEqualToString:@""]) {
        CGFloat width = self.tableView.frame.size.width/16.0*15.0;
        CGRect rect = [XENHResources boundedRectForFont:[UIFont systemFontOfSize:15] andText:comment width:width-30];
    
        commentHeight = rect.size.height + 10;
    }
    
    return 44.0 + commentHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
