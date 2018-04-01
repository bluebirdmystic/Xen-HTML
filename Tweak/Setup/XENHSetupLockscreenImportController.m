//
//  XENHSetupLockscreenImportController.m
//  
//
//  Created by Matt Clarke on 11/09/2016.
//
//

#import "XENHSetupLockscreenImportController.h"
#import "XENHResources.h"
#import "XENHSetupHomescreenImportController.h"

@interface XENHSetupLockscreenImportController ()

@end

@implementation XENHSetupLockscreenImportController

-(NSString*)headerTitle {
    return @"Lockscreen Setup";
}

-(NSString*)cellReuseIdentifier {
    return @"setupCell";
}

-(NSInteger)rowsToDisplay {
    NSInteger availableRows = 1;
    
    if ([self hasLockHTML]) availableRows++;
    if ([self hasGroovyLock]) availableRows++;
    
    return availableRows;
}

-(BOOL)hasLockHTML {
    return [[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/Library/Preferences/com.bushe.lockhtml.plist"];
}

-(BOOL)hasGroovyLock {
    return [[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/Library/Preferences/com.groovycarrot.GroovyLock.plist"];
}

-(BOOL)hasCydget {
    return [[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/Library/Preferences/com.saurik.Cydget.plist"];
}

-(UIImage*)footerImage {
    NSString *imagePath = [NSString stringWithFormat:@"/Library/PreferenceBundles/XenHTMLPrefs.bundle/Setup/Lockscreen%@", [XENHResources imageSuffix]];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:imagePath]) {
        // Oh for crying out loud CoolStar
        imagePath = [NSString stringWithFormat:@"/bootstrap/Library/PreferenceBundles/XenHTMLPrefs.bundle/Setup/Lockscreen%@", [XENHResources imageSuffix]];
    }
    
    UIImage *img = [UIImage imageWithContentsOfFile:imagePath];
    
    return [img imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}

-(NSString*)footerTitle {
    return [XENHResources localisedStringForKey:@"What does Importing do?" value:@"What does Importing do?"];
}

-(NSString*)footerBody {
    return [XENHResources localisedStringForKey:@"Importing allows you to move existing Lockscreen settings across to Xen HTML." value:@"Importing allows you to move existing Lockscreen settings across to Xen HTML."];
}

-(NSString*)titleForCellAtIndex:(NSInteger)index {
    // Will remain in this order.
    int shown = 0;
    
    // Handle first row.
    if ([self hasLockHTML] && index == 1) {
        shown = 1;
    } else if ([self hasGroovyLock] && index == 1) {
        shown = 2;
    } else if ([self hasCydget] && index == 1) {
        shown = 3;
    }
    
    // next, handle second row. Displaying either groovyLock or Cydget
    if (![self hasLockHTML] && index == 2) {
        // Index 1 was groovy
        shown = 3;
    } else if ([self hasGroovyLock] && index == 2) {
        // Index 1 was lock
        shown = 2;
    } else if ([self hasCydget] && index == 2) {
        // Has LockHTML, and not groovy.
        shown = 3;
    }
    
    if (index == 3) {
        shown = 3; // If on index 3, definitely have all 3.
    }
    
    switch (shown) {
        case 0:
            return [XENHResources localisedStringForKey:@"Setup Without Importing" value:@"Setup Without Importing"];
            break;
        case 1:
            return [XENHResources localisedStringForKey:@"Import from LockHTML" value:@"Import from LockHTML"];
            break;
        case 2:
            return [XENHResources localisedStringForKey:@"Import from GroovyLock" value:@"Import from GroovyLock"];
            break;
    
        default:
            return @"";
            break;
    }
}

-(void)userDidSelectCellAtIndex:(NSInteger)index {
    // Setup as appropriate.
    int shown = 0;
    
    // Handle first row.
    if ([self hasLockHTML] && index == 1) {
        shown = 1;
    } else if ([self hasGroovyLock] && index == 1) {
        shown = 2;
    } else if ([self hasCydget] && index == 1) {
        shown = 3;
    }
    
    // next, handle second row. Displaying either groovyLock or Cydget
    if (![self hasLockHTML] && index == 2) {
        // Index 1 was groovy
        shown = 3;
    } else if ([self hasGroovyLock] && index == 2) {
        // Index 1 was lock
        shown = 2;
    } else if ([self hasCydget] && index == 2) {
        // Has LockHTML, and not groovy.
        shown = 3;
    }
    
    if (index == 3) {
        shown = 3; // If on index 3, definitely have all 3.
    }
    
    switch (shown) {
        case 0:
            // No changes, so set defaults and continue as normal!
            
            [XENHResources setPreferenceKey:@"hideClock" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            [XENHResources setPreferenceKey:@"hideSTU" withValue:[NSNumber numberWithBool:YES] andPost:NO];
            [XENHResources setPreferenceKey:@"sameSizedStatusBar" withValue:[NSNumber numberWithBool:YES] andPost:NO];
            [XENHResources setPreferenceKey:@"hideStatusBar" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            [XENHResources setPreferenceKey:@"hideTopGrabber" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            [XENHResources setPreferenceKey:@"hideBottomGrabber" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            [XENHResources setPreferenceKey:@"hideCameraGrabber" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            [XENHResources setPreferenceKey:@"disableCameraGrabber" withValue:[NSNumber numberWithBool:NO] andPost:NO];
            
            [XENHResources setPreferenceKey:@"foregroundLocation" withValue:@"" andPost:NO];
            [XENHResources setPreferenceKey:@"backgroundLocation" withValue:@"" andPost:YES];
            
            break;
            
        case 1: {
            // LockHTML
            NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.bushe.lockhtml.plist"];
            
            NSString *widgetPosition = [settings objectForKey:@"widgetPosition"] ? [settings objectForKey:@"widgetPosition"] : @"above";
            NSArray *selected = [settings objectForKey:@"ThemesSelected"] ? [settings objectForKey:@"ThemesSelected"] : @[];
            BOOL hideTopGrabber = [settings objectForKey:@"hideTopGrabber"] ? [[settings objectForKey:@"hideTopGrabber"] boolValue] : NO;
            BOOL hideLSLabel = [settings objectForKey:@"hideLSLabel"] ? [[settings objectForKey:@"hideLSLabel"] boolValue] : NO;
            BOOL hideBottomGrabber = [settings objectForKey:@"hideBottomGrabber"] ? [[settings objectForKey:@"hideBottomGrabber"] boolValue] : NO;
            
            // Camera
            BOOL grabberHide = [settings objectForKey:@"grabberHide"] ? [[settings objectForKey:@"grabberHide"] boolValue] : NO;
            BOOL grabberDisabled = [settings objectForKey:@"grabberDisabled"] ? [[settings objectForKey:@"grabberDisabled"] boolValue] : NO;
            
            BOOL clockHide = [settings objectForKey:@"hideTop"] ? [[settings objectForKey:@"hideTop"] boolValue] : NO;
            
            // XXX: Now, we port to XenHTML.
            [XENHResources setPreferenceKey:@"hideClock" withValue:[NSNumber numberWithBool:clockHide] andPost:NO];
            [XENHResources setPreferenceKey:@"hideSTU" withValue:[NSNumber numberWithBool:hideLSLabel] andPost:NO];
            [XENHResources setPreferenceKey:@"hideTopGrabber" withValue:[NSNumber numberWithBool:hideTopGrabber] andPost:NO];
            [XENHResources setPreferenceKey:@"hideBottomGrabber" withValue:[NSNumber numberWithBool:hideBottomGrabber] andPost:NO];
            [XENHResources setPreferenceKey:@"hideCameraGrabber" withValue:[NSNumber numberWithBool:grabberHide] andPost:NO];
            [XENHResources setPreferenceKey:@"disableCameraGrabber" withValue:[NSNumber numberWithBool:grabberDisabled] andPost:NO];
            
            // Now, we set the location dependant on whether the position is "above" or not.
            NSDictionary *theme = (selected.count > 0 ? [selected firstObject] : @"");
            
            NSString *name = [theme objectForKey:@"name"];
            NSString *path = [theme objectForKey:@"path"];
            NSString *html = [theme objectForKey:@"html"];
            
            path = [NSString stringWithFormat:@"%@/%@", path, html];
            
            if ([widgetPosition isEqualToString:@"above"]) {
                [XENHResources setPreferenceKey:@"foregroundLocation" withValue:path andPost:NO];
            } else {
                [XENHResources setPreferenceKey:@"backgroundLocation" withValue:path andPost:NO];
            }
            
            XENlog(@"SET %@ FOR LOCKHTML, POSITION %@", path, widgetPosition);
            
            // Next, pull metadata for this one.
            NSMutableDictionary *metadata = [[XENHResources rawMetadataForHTMLFile:path] mutableCopy];
            
            // Finally, we do the widgetX and widgetY values.
            NSDictionary *coords = [settings objectForKey:@"WidgetCoordinates"];
            if (coords) {
                // We can customise the metadata.
                NSDictionary *dict = [coords objectForKey:name];
                
                id widgetX = [dict objectForKey:@"widgetX"];
                id widgetY = [dict objectForKey:@"widgetY"];
                
                CGFloat x = 0;
                CGFloat y = 0;
                
                if (widgetX) {
                    x = [widgetX floatValue];
                    x /= SCREEN_WIDTH;
                }
                
                if (widgetY) {
                    y = [widgetY floatValue];
                    y /= SCREEN_HEIGHT;
                }
                
                [metadata setValue:[NSNumber numberWithFloat:x] forKey:@"x"];
                [metadata setValue:[NSNumber numberWithFloat:y] forKey:@"y"];
            }
            
            NSMutableDictionary *widgetPrefs = [[XENHResources getPreferenceKey:@"widgetPrefs"] mutableCopy];
            if (!widgetPrefs) {
                widgetPrefs = [NSMutableDictionary dictionary];
            }
            
            NSString *key = @"";
            if ([widgetPosition isEqualToString:@"above"]) {
                key = @"LSForeground";
            } else {
                key = @"LSBackground";
            }
            
            [widgetPrefs setObject:metadata forKey:key];
            
            [XENHResources setPreferenceKey:@"widgetPrefs" withValue:widgetPrefs andPost:YES];
            
            // Done.
            
            break;
        } case 2: {
            // GroovyLock
            NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.groovycarrot.GroovyLock.plist"];
            
            NSString *activeTheme = [settings objectForKey:@"ActiveTheme"] ? [settings objectForKey:@"ActiveTheme"] : @"";
            BOOL backgroundPosition = [settings objectForKey:@"Background"] ? [[settings objectForKey:@"Background"] boolValue] : NO;
            BOOL hideClock = [settings objectForKey:@"HideClock"] ? [[settings objectForKey:@"HideClock"] boolValue] : NO;
            
            // Sort out activeTheme
            if (![activeTheme isEqualToString:@""]) {
                activeTheme = [NSString stringWithFormat:@"/var/mobile/GroovyLock/%@/LockBackground.html", activeTheme];
            }
            
            // XXX: Now, we port to XenHTML.
            [XENHResources setPreferenceKey:@"hideClock" withValue:[NSNumber numberWithBool:hideClock] andPost:NO];
            if (!backgroundPosition) {
                [XENHResources setPreferenceKey:@"foregroundLocation" withValue:activeTheme andPost:NO];
            } else {
                [XENHResources setPreferenceKey:@"backgroundLocation" withValue:activeTheme andPost:NO];
            }
            
            XENlog(@"SET %@ FOR GROOVYLOCK, POSITION %d", activeTheme, !backgroundPosition);
            
            // Next, pull metadata for this one.
            NSMutableDictionary *metadata = [[XENHResources rawMetadataForHTMLFile:activeTheme] mutableCopy];
            
            NSMutableDictionary *widgetPrefs = [[XENHResources getPreferenceKey:@"widgetPrefs"] mutableCopy];
            if (!widgetPrefs) {
                widgetPrefs = [NSMutableDictionary dictionary];
            }
            
            NSString *key = @"";
            if (!backgroundPosition) {
                key = @"LSForeground";
            } else {
                key = @"LSBackground";
            }
            
            [widgetPrefs setObject:metadata forKey:key];
            
            [XENHResources setPreferenceKey:@"widgetPrefs" withValue:widgetPrefs andPost:YES];
            // Job done!
            
            break;
        }
        default:
            break;
    }
    
    [XENHResources reloadSettings];
}

// This will either be the user selected cell, or whatever is currently checkmarked.
-(UIViewController*)controllerToSegueForIndex:(NSInteger)index {
    XENHSetupHomescreenImportController *nextController = [[XENHSetupHomescreenImportController alloc] initWithStyle:UITableViewStyleGrouped];
    
    return nextController;
}

-(BOOL)shouldSegueToNewControllerAfterSelectingCell {
    return YES;
}

@end
