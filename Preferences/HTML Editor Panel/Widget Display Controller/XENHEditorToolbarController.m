//
//  XENHTMLEditorToolbarController.m
//  XenHTMLPrefs
//
//  Created by Matt Clarke on 25/01/2018.
//

#import "XENHEditorToolbarController.h"
#import "AYVibrantButton.h"
#import "XENHResources.h"
#import "XENHTouchPassThroughView.h"

/* Private headers */

@interface _UIBackdropViewSettings : NSObject
+ (id)settingsForStyle:(int)arg1;
+ (id)settingsForPrivateStyle:(int)arg1;
+ (id)settingsForPrivateStyle:(long long)arg1 graphicsQuality:(long long)arg2;
- (void)setColorTint:(id)arg1;
- (void)setColorTintAlpha:(CGFloat)arg1;
@property BOOL enabled;
@end

@interface _UIBackdropView : UIView
@property bool applySettingsAfterLayout;
- (id)initWithFrame:(CGRect)arg1 autosizesToFitSuperview:(BOOL)arg2 settings:(id)arg3;
- (id)initWithPrivateStyle:(int)arg1;
- (id)initWithSettings:(id)arg1;
- (id)initWithStyle:(int)arg1;
- (void)setBlurFilterWithRadius:(CGFloat)arg1 blurQuality:(id)arg2 blurHardEdges:(int)arg3;
- (void)setBlurFilterWithRadius:(CGFloat)arg1 blurQuality:(id)arg2;
- (void)setBlurHardEdges:(int)arg1;
- (void)setBlurQuality:(id)arg1;
- (void)setBlurRadius:(CGFloat)arg1;
- (void)setBlurRadiusSetOnce:(BOOL)arg1;
- (void)setBlursBackground:(BOOL)arg1;
- (void)setBlursWithHardEdges:(BOOL)arg1;
- (void)transitionToSettings:(id)arg1;
-(id)contentView;
@property (nonatomic, strong) _UIBackdropViewSettings *inputSettings;
@end

@interface UIView (iOS11)
@property (nonatomic, readonly) UIEdgeInsets safeAreaInsets;
@end

/* Extra properties not in .h */

@interface XENHEditorToolbarController ()

@property (nonatomic, weak) id<XENHEditorToolbarDelegate> delegate;

@property (nonatomic, strong) UIVisualEffectView *editorBarVisualEffectView;
@property (nonatomic, strong) UIVisualEffectView *editorBarBackdropView;
@property (nonatomic, strong) AYVibrantButton *cancelButton;
@property (nonatomic, strong) AYVibrantButton *addButton;
@property (nonatomic, strong) AYVibrantButton *acceptButton;
@property (nonatomic, strong) AYVibrantButton *configureButton;

@end

static CGFloat toolbarHeight = 100.0;

@implementation XENHEditorToolbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithDelegate:(id<XENHEditorToolbarDelegate>)delegate {
    self = [super init];
    
    if (self) {
        self.delegate = delegate;
    }
    
    return self;
}

- (void)loadView {
    self.view = [[XENHTouchPassThroughView alloc] initWithFrame:CGRectZero];
    self.view.backgroundColor = [UIColor clearColor];
    
    // Load buttons.
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVibrancyEffect *vibrancyEffect = [UIVibrancyEffect effectForBlurEffect:blurEffect];
    
    // Backdrop
    self.editorBarBackdropView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [self.view addSubview:self.editorBarBackdropView];
    
    if (IS_IPAD) {
        self.editorBarBackdropView.clipsToBounds = YES;
    }
    
    // Visual effect view
    self.editorBarVisualEffectView = [[UIVisualEffectView alloc] initWithEffect:vibrancyEffect];
    [self.editorBarBackdropView.contentView addSubview:self.editorBarVisualEffectView];
    
    // Buttons.
    
    // Cancel.
    self.cancelButton = [[AYVibrantButton alloc] initWithFrame:CGRectZero style:AYVibrantButtonStyleTranslucent];
    self.cancelButton.vibrancyEffect = vibrancyEffect;
    self.cancelButton.cornerRadius = 0.0;
    self.cancelButton.text = [XENHResources localisedStringForKey:@"Cancel" value:@"Cancel"];
    [self.cancelButton addTarget:self action:@selector(cancelEditingMode:) forControlEvents:UIControlEventTouchUpInside];
    self.cancelButton.contentMode = UIViewContentModeRedraw;
    
    [self.editorBarVisualEffectView.contentView addSubview:self.cancelButton];
    
    // Modify/add
    self.addButton = [[AYVibrantButton alloc] initWithFrame:CGRectZero style:AYVibrantButtonStyleTranslucent];
    self.addButton.vibrancyEffect = vibrancyEffect;
    self.addButton.cornerRadius = 0.0;
    self.addButton.text = [XENHResources localisedStringForKey:@"Modify" value:@"Modify"];
    [self.addButton addTarget:self action:@selector(addButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.editorBarVisualEffectView.contentView addSubview:self.addButton];
    
    // Accept
    self.acceptButton = [[AYVibrantButton alloc] initWithFrame:CGRectZero style:AYVibrantButtonStyleTranslucent];
    self.acceptButton.vibrancyEffect = vibrancyEffect;
    self.acceptButton.cornerRadius = 0.0;
    self.acceptButton.text = [XENHResources localisedStringForKey:@"Accept" value:@"Accept"];
    [self.acceptButton addTarget:self action:@selector(acceptEditingMode:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.editorBarVisualEffectView.contentView addSubview:self.acceptButton];
    
    // Settings
    self.configureButton = [[AYVibrantButton alloc] initWithFrame:CGRectZero style:AYVibrantButtonStyleTranslucent];
    self.configureButton.vibrancyEffect = vibrancyEffect;
    self.configureButton.cornerRadius = 0.0;
    self.configureButton.text = [XENHResources localisedStringForKey:@"Widget Settings" value:@"Widget Settings"];
    [self.configureButton addTarget:self action:@selector(configureButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.editorBarVisualEffectView.contentView addSubview:self.configureButton];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    // Layout buttons.
    
    // TODO: First, get the home bar inset (if needed)
    CGFloat homebarInsetY = 0.0;
    if ([self.view respondsToSelector:@selector(safeAreaInsets)]) {
        homebarInsetY = self.view.safeAreaInsets.bottom;
    }
    
    // Handle the background region
    if (IS_IPAD) {
        // Adjust to a "floating" bar
        CGFloat ipadInset = 20.0;
        
        self.editorBarBackdropView.frame = CGRectMake(self.view.bounds.size.width * 0.2, self.view.bounds.size.height - homebarInsetY - ipadInset - toolbarHeight, self.view.bounds.size.width * 0.6, homebarInsetY + toolbarHeight);
        self.editorBarBackdropView.layer.cornerRadius = 12.5;
    } else {
        self.editorBarBackdropView.frame = CGRectMake(0, self.view.bounds.size.height - homebarInsetY - toolbarHeight, self.view.bounds.size.width, homebarInsetY + toolbarHeight);
    }
    
    self.editorBarVisualEffectView.frame = self.editorBarBackdropView.bounds;
    
    // Buttons
    self.cancelButton.frame = CGRectMake(-0.5, (toolbarHeight/2)-1, self.editorBarBackdropView.bounds.size.width/3, (toolbarHeight/2)+1.5);
    self.addButton.frame = CGRectMake(self.editorBarBackdropView.bounds.size.width/3 - 1.5, (toolbarHeight/2)-1, self.editorBarBackdropView.bounds.size.width/3 + 2.5, (toolbarHeight/2)+1.5);
    self.acceptButton.frame = CGRectMake((self.editorBarBackdropView.bounds.size.width/3)*2 + 0.0, (toolbarHeight/2)-1, self.editorBarBackdropView.bounds.size.width/3, (toolbarHeight/2)+1.5);
    self.configureButton.frame = CGRectMake(-1, -1, self.editorBarBackdropView.bounds.size.width + 1.5, (toolbarHeight/2)+1.5);
}

// Button callbacks.

-(void)cancelEditingMode:(id)sender {
    [self.delegate toolbarDidPressButton:kButtonCancel];
}

-(void)acceptEditingMode:(id)sender {
    [self.delegate toolbarDidPressButton:kButtonAccept];
}

-(void)addButtonClicked:(id)sender {
    [self.delegate toolbarDidPressButton:kButtonModify];
}

-(void)configureButtonClicked:(id)sender {
    [self.delegate toolbarDidPressButton:kButtonSettings];
}

@end
