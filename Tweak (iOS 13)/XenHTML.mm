#line 1 "/Users/matt/iOS/Projects/Xen-HTML/Tweak (iOS 13)/XenHTML.xm"


















#import "XENHWidgetLayerController.h"
#import "XENHHomescreenForegroundViewController.h"
#import "XENHResources.h"
#import "XENHTouchPassThroughView.h"
#import "XENHButton.h"

#import "XENHTouchForwardingRecognizer.h"
#import "XENSetupWindow.h"
#import "PrivateHeaders.h"
#import <objc/runtime.h>

#pragma mark Simulator support

;









#pragma mark Function definitions

static void hideForegroundForLSNotifIfNeeded();
static void showForegroundForLSNotifIfNeeded();

static void hideForegroundIfNeeded();
static void showForegroundIfNeeded();

void resetIdleTimer();
void cancelIdleTimer();

static XENHSetupWindow *setupWindow;

#pragma mark Start hooks


#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class SBBacklightController; @class SBIconView; @class SBIconScrollView; @class SpringBoard; @class SBIconListPageControl; @class SBRootFolderView; @class XENDashBoardWebViewController; @class WKWebView; @class SBHorizontalScrollFailureRecognizer; @class SBIdleTimerDefaults; @class SBPagedScrollView; @class SBDashBoardMainPageContentViewController; @class UIWKTextLoupeInteraction; @class SBDashBoardViewController; @class SBMainSwitcherViewController; @class SBRootFolderController; @class SBHomeScreenPreviewView; @class SBLockScreenNotificationListController; @class SBFolderIconBackgroundView; @class SBDockView; @class SBLockScreenManager; @class SBLockScreenViewController; @class SBUIProudLockIconView; @class SBDashBoardMainPageViewController; @class SBDashBoardPageViewController; @class SBHomeScreenWindow; @class SBDashBoardMainPageView; @class SBScreenWakeAnimationController; @class SBHomeScreenViewController; @class SBDashBoardView; @class UITouch; @class SBDashBoardTeachableMomentsContainerView; @class SBHomeScreenView; @class _UIPlatterView; @class SBDashBoardFixedFooterView; @class SBRootIconListView; @class SBUICallToActionLabel; @class UITouchesEvent; @class SBDashBoardCombinedListViewController; @class SBApplication; @class SBFloatingDockPlatterView; @class SBMainWorkspace; @class SBMainStatusBarStateProvider; @class SBFluidSwitcherGestureWorkspaceTransaction; @class SBFLockScreenDateView; @class SBDashBoardQuickActionsViewController; @class SBCoverSheetWindow; 


#line 57 "/Users/matt/iOS/Projects/Xen-HTML/Tweak (iOS 13)/XenHTML.xm"
static Class _logos_superclass$SpringBoard$SpringBoard; static void (*_logos_orig$SpringBoard$SpringBoard$didReceiveMemoryWarning)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardView; static void (*_logos_orig$SpringBoard$SBDashBoardView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBDashBoardView$viewControllerWillAppear)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBDashBoardView$setWallpaperEffectView$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL, UIView*);static void (*_logos_orig$SpringBoard$SBDashBoardView$viewControllerDidDisappear)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardMainPageView; static UIView * (*_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageView* _LOGOS_SELF_CONST, SEL, CGPoint, UIEvent *);static void (*_logos_orig$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$XENDashBoardWebViewController; static long long (*_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationTransition)(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST, SEL);static long long (*_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationPriority)(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST, SEL);static long long (*_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationType)(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST, SEL);static long long (*_logos_orig$SpringBoard$XENDashBoardWebViewController$scrollingStrategy)(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews)(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardMainPageContentViewController; static SBDashBoardMainPageContentViewController*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$init)(_LOGOS_SELF_TYPE_INIT SBDashBoardMainPageContentViewController*, SEL);static void (*_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageContentViewController* _LOGOS_SELF_CONST, SEL, SBDashBoardAppearance*);static Class _logos_superclass$SpringBoard$SBDashBoardMainPageViewController; static SBDashBoardMainPageViewController*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBDashBoardMainPageViewController$init)(_LOGOS_SELF_TYPE_INIT SBDashBoardMainPageViewController*, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardQuickActionsViewController; static _Bool (*_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardViewController; static void (*_logos_orig$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL, CGSize, id);static long long (*_logos_orig$SpringBoard$SBDashBoardViewController$statusBarStyle)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBHorizontalScrollFailureRecognizer; static _Bool (*_logos_orig$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$)(_LOGOS_SELF_TYPE_NORMAL SBHorizontalScrollFailureRecognizer* _LOGOS_SELF_CONST, SEL, struct CGPoint, double);static Class _logos_superclass$SpringBoard$SBPagedScrollView; static BOOL (*_logos_orig$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$)(_LOGOS_SELF_TYPE_NORMAL SBPagedScrollView* _LOGOS_SELF_CONST, SEL, UIView *);static Class _logos_superclass$SpringBoard$SBFLockScreenDateView; static void (*_logos_orig$SpringBoard$SBFLockScreenDateView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST, SEL, BOOL);static Class _logos_superclass$SpringBoard$SBDashBoardPageViewController; static void (*_logos_orig$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageViewController* _LOGOS_SELF_CONST, SEL, SBDashBoardAppearance*);static Class _logos_superclass$SpringBoard$SBMainStatusBarStateProvider; static void (*_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$)(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL, _Bool);static void (*_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$)(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL, _Bool, _Bool, double);static void (*_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$)(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL, _Bool);static _Bool (*_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled)(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBCoverSheetWindow; static void (*_logos_orig$SpringBoard$SBCoverSheetWindow$sendEvent$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetWindow* _LOGOS_SELF_CONST, SEL, UIEvent *);static Class _logos_superclass$SpringBoard$SBUICallToActionLabel; static void (*_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$)(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, id, id, BOOL);static Class _logos_superclass$SpringBoard$SBDashBoardTeachableMomentsContainerView; static void (*_logos_orig$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTeachableMomentsContainerView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBUIProudLockIconView; static void (*_logos_orig$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$)(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST, SEL, NSInteger, BOOL, NSInteger, id);static void (*_logos_orig$SpringBoard$SBUIProudLockIconView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBDashBoardFixedFooterView; static void (*_logos_orig$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardFixedFooterView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBIdleTimerDefaults; static void (*_logos_orig$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults)(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDefaults* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBLockScreenManager; static void (*_logos_orig$SpringBoard$SBLockScreenManager$_setUILocked$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenManager* _LOGOS_SELF_CONST, SEL, _Bool);static void (*_logos_orig$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenManager* _LOGOS_SELF_CONST, SEL, NSNotification*);static Class _logos_superclass$SpringBoard$SBMainWorkspace; static void (*_logos_orig$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$)(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST, SEL, id, id);static void (*_logos_orig$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$)(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST, SEL, id, FBProcessState*, FBProcessState*);static _Bool (*_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$)(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST, SEL, SBMainWorkspaceTransitionRequest*);static Class _logos_superclass$SpringBoard$SBApplication; static void (*_logos_orig$SpringBoard$SBApplication$willAnimateDeactivation$)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL, _Bool);static Class _logos_superclass$SpringBoard$SBMainSwitcherViewController; static void (*_logos_orig$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$)(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, id, id);static Class _logos_superclass$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction; static void (*_logos_orig$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$)(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherGestureWorkspaceTransaction* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$SpringBoard$SBScreenWakeAnimationController; static void (*_logos_orig$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$)(_LOGOS_SELF_TYPE_NORMAL SBScreenWakeAnimationController* _LOGOS_SELF_CONST, SEL, _Bool);static void (*_logos_orig$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$)(_LOGOS_SELF_TYPE_NORMAL SBScreenWakeAnimationController* _LOGOS_SELF_CONST, SEL, _Bool, id);static Class _logos_superclass$SpringBoard$SBHomeScreenViewController; static void (*_logos_orig$SpringBoard$SBHomeScreenViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST, SEL, CGSize, int, id);static Class _logos_superclass$SpringBoard$SBHomeScreenView; static void (*_logos_orig$SpringBoard$SBHomeScreenView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBHomeScreenView$insertSubview$atIndex$)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST, SEL, UIView*, int);static void (*_logos_orig$SpringBoard$SBHomeScreenView$setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST, SEL, BOOL);static Class _logos_superclass$SpringBoard$SBDockView; static SBDockView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBDockView$initWithDockListView$forSnapshot$)(_LOGOS_SELF_TYPE_INIT SBDockView*, SEL, id, BOOL);static void (*_logos_orig$SpringBoard$SBDockView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBDockView$_backgroundContrastDidChange$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, id);static UIView* (*_logos_orig$SpringBoard$SBDockView$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, CGPoint, UIEvent *);static Class _logos_superclass$SpringBoard$SBFloatingDockPlatterView; static SBFloatingDockPlatterView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$)(_LOGOS_SELF_TYPE_INIT SBFloatingDockPlatterView*, SEL, double, double);static void (*_logos_orig$SpringBoard$SBFloatingDockPlatterView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBFolderIconBackgroundView; static SBFolderIconBackgroundView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize)(_LOGOS_SELF_TYPE_INIT SBFolderIconBackgroundView*, SEL);static SBFolderIconBackgroundView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SBFolderIconBackgroundView*, SEL, CGRect);static void (*_logos_orig$SpringBoard$SBFolderIconBackgroundView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconBackgroundView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBIconView; static SBIconView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBIconView$initWithContentType$)(_LOGOS_SELF_TYPE_INIT SBIconView*, SEL, unsigned long long);static void (*_logos_orig$SpringBoard$SBIconView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBIconListPageControl; static void (*_logos_orig$SpringBoard$SBIconListPageControl$setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, BOOL);static Class _logos_superclass$SpringBoard$SBRootFolderView; static void (*_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBRootFolderView$_updateDockViewZOrdering)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL);static SBRootFolderView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$)(_LOGOS_SELF_TYPE_INIT SBRootFolderView*, SEL, id);static void (*_logos_orig$SpringBoard$SBRootFolderView$setEditing$animated$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, _Bool, _Bool);static void (*_logos_orig$SpringBoard$SBRootFolderView$scrollViewDidScroll$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$SpringBoard$SBRootFolderView$addSubview$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$SpringBoard$SBRootFolderView$insertSubview$atIndex$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, id, int);static UIView* (*_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, CGPoint, UIEvent *);static Class _logos_superclass$SpringBoard$SBRootFolderController; static SBRootFolderController*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$)(_LOGOS_SELF_TYPE_INIT SBRootFolderController*, SEL, id, long long, id, id);static void (*_logos_orig$SpringBoard$SBRootFolderController$loadView)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$SBIconScrollView; static void (*_logos_orig$SpringBoard$SBIconScrollView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBIconScrollView$addSubview$)(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$SpringBoard$SBIconScrollView$insertSubview$atIndex$)(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL, id, int);static UIView* (*_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL, CGPoint, UIEvent *);static Class _logos_superclass$SpringBoard$SBRootIconListView; static UIView* (*_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBRootIconListView* _LOGOS_SELF_CONST, SEL, CGPoint, UIEvent *);static Class _logos_superclass$SpringBoard$SBHomeScreenPreviewView; static SBHomeScreenPreviewView*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$)(_LOGOS_SELF_TYPE_INIT SBHomeScreenPreviewView*, SEL, CGRect, id);static Class _logos_superclass$SpringBoard$WKWebView; static BOOL (*_logos_orig$SpringBoard$WKWebView$_shouldUpdateKeyboardWithInfo$)(_LOGOS_SELF_TYPE_NORMAL WKWebView* _LOGOS_SELF_CONST, SEL, NSDictionary *);static Class _logos_superclass$SpringBoard$_UIPlatterView; static void (*_logos_orig$SpringBoard$_UIPlatterView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL _UIPlatterView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$SpringBoard$UIWKTextLoupeInteraction; static void (*_logos_orig$SpringBoard$UIWKTextLoupeInteraction$loupeGesture$)(_LOGOS_SELF_TYPE_NORMAL UIWKTextLoupeInteraction* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$SpringBoard$SBLockScreenViewController; static void (*_logos_orig$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL, BOOL);static Class _logos_superclass$SpringBoard$SBLockScreenNotificationListController; static SBLockScreenNotificationListController*  _LOGOS_RETURN_RETAINED(*_logos_orig$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$)(_LOGOS_SELF_TYPE_INIT SBLockScreenNotificationListController*, SEL, id, id);static void (*_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST, SEL, id, _Bool);static void (*_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$SpringBoard$SBDashBoardCombinedListViewController; static void (*_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL, _Bool);static UIEdgeInsets (*_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL, _Bool);static Class _logos_superclass$SpringBoard$UITouchesEvent; static NSSet* (*_logos_orig$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$)(_LOGOS_SELF_TYPE_NORMAL UITouchesEvent* _LOGOS_SELF_CONST, SEL, UIGestureRecognizer*);static NSSet* (*_logos_orig$SpringBoard$UITouchesEvent$touchesForView$)(_LOGOS_SELF_TYPE_NORMAL UITouchesEvent* _LOGOS_SELF_CONST, SEL, UIView*);static Class _logos_superclass$SpringBoard$UITouch; static id (*_logos_orig$SpringBoard$UITouch$view)(_LOGOS_SELF_TYPE_NORMAL UITouch* _LOGOS_SELF_CONST, SEL);

static XENHWidgetLayerController *backgroundViewController = nil;
static XENHWidgetLayerController *foregroundViewController = nil;
static XENHWidgetLayerController *sbhtmlViewController = nil;
static XENHHomescreenForegroundViewController *sbhtmlForegroundViewController = nil;

static NSMutableArray *foregroundHiddenRequesters;
static XENHTouchForwardingRecognizer *lsBackgroundForwarder;
static XENHTouchForwardingRecognizer *sbhtmlForwardingGesture;
static XENDashBoardWebViewController *lockscreenForegroundWrapperController;

static id dashBoardMainPageViewController;
static id dashBoardMainPageContentViewController;

static BOOL refuseToLoadDueToRehosting = NO;

#pragma mark Memory pressure handling



static void _logos_method$SpringBoard$SpringBoard$didReceiveMemoryWarning(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    [backgroundViewController didReceiveMemoryWarningExternal];
    [foregroundViewController didReceiveMemoryWarningExternal];
    [sbhtmlViewController didReceiveMemoryWarningExternal];
    [sbhtmlForegroundViewController didReceiveMemoryWarningExternal];
}



#pragma mark Layout LS web views (iOS 13+)



static void _logos_method$SpringBoard$SBDashBoardView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    BOOL canRotate = [[[objc_getClass("SBLockScreenManager") sharedInstance] lockScreenViewController] shouldAutorotate];
    
    int orientation = canRotate ? (int)[UIApplication sharedApplication].statusBarOrientation : 1;
    [XENHResources setCurrentOrientation:orientation];
    
    (_logos_orig$SpringBoard$SBDashBoardView$layoutSubviews ? _logos_orig$SpringBoard$SBDashBoardView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBDashBoardView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources lsenabled]) {
        backgroundViewController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        foregroundViewController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        
        if (self.wallpaperEffectView) {
            
            int wallpaperIndex = (int)[self.slideableContentView.subviews indexOfObject:self.wallpaperEffectView];
            int backgroundControllerExpectedIndex = wallpaperIndex + 1;
            
            if (![[self.slideableContentView.subviews objectAtIndex:backgroundControllerExpectedIndex] isEqual:backgroundViewController.view])
                [self.slideableContentView insertSubview:backgroundViewController.view aboveSubview:self.wallpaperEffectView];
        } else if (![[self.slideableContentView.subviews objectAtIndex:0] isEqual:backgroundViewController.view]) {
            [self.slideableContentView insertSubview:backgroundViewController.view atIndex:0];
        }
    }
}

static void _logos_method$SpringBoard$SBDashBoardView$viewControllerWillAppear(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDashBoardView$viewControllerWillAppear ? _logos_orig$SpringBoard$SBDashBoardView$viewControllerWillAppear : (__typeof__(_logos_orig$SpringBoard$SBDashBoardView$viewControllerWillAppear))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardView, @selector(viewControllerWillAppear)))(self, _cmd);
    
    
    
    
    
    if ([XENHResources isAtLeastiOSVersion:13 subversion:0] && [XENHResources lsenabled]) {
        BOOL isLocked = [(SpringBoard*)[UIApplication sharedApplication] isLocked];
        
        
        BOOL canRotate = [[[objc_getClass("SBLockScreenManager") sharedInstance] lockScreenViewController] shouldAutorotate];
        
        int orientation = canRotate ? (int)[UIApplication sharedApplication].statusBarOrientation : 1;
        [XENHResources setCurrentOrientation:orientation];
        
        XENlog(@"Adding webviews to Dashboard if needed...");
        
        
        if ([XENHResources widgetLayerHasContentForLocation:kLocationLSForeground]) {
            if (!foregroundViewController)
                foregroundViewController = [XENHResources widgetLayerControllerForLocation:kLocationLSForeground];
            else if (![XENHResources LSPersistentWidgets])
                [foregroundViewController reloadWidgets:NO];
            else if ([XENHResources LSPersistentWidgets] && !isLocked) {
                [foregroundViewController setPaused:NO];
            }
            
            
            
            
            if (!lockscreenForegroundWrapperController) {
                lockscreenForegroundWrapperController = [[objc_getClass("XENDashBoardWebViewController") alloc] init];
            }
            
            [lockscreenForegroundWrapperController setWebView:foregroundViewController.view];
            
            [dashBoardMainPageContentViewController presentContentViewController:lockscreenForegroundWrapperController animated:NO];
            
            BOOL canHideForeground = foregroundHiddenRequesters.count > 0;
            if (canHideForeground) {
                XENlog(@"Should hide foreground on LS webview init");
                hideForegroundIfNeeded();
            } else {
                XENlog(@"Should show foreground on LS webview init");
                showForegroundIfNeeded();
            }
        }
        
        
        if ([XENHResources widgetLayerHasContentForLocation:kLocationLSBackground]) {
            if (!backgroundViewController)
                backgroundViewController = [XENHResources widgetLayerControllerForLocation:kLocationLSBackground];
            else if (![XENHResources LSPersistentWidgets])
                [backgroundViewController reloadWidgets:NO];
            else if ([XENHResources LSPersistentWidgets] && !isLocked) {
                [backgroundViewController setPaused:NO];
            }
            
            
            [self.slideableContentView insertSubview:backgroundViewController.view atIndex:0];
        }
    }
}

#pragma mark Fix background controller being hidden when going to the camera (iOS 11)

static void _logos_method$SpringBoard$SBDashBoardView$setWallpaperEffectView$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView* wallpaperEffectView) {
    (_logos_orig$SpringBoard$SBDashBoardView$setWallpaperEffectView$ ? _logos_orig$SpringBoard$SBDashBoardView$setWallpaperEffectView$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardView$setWallpaperEffectView$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardView, @selector(setWallpaperEffectView:)))(self, _cmd, wallpaperEffectView);
    
    if ([XENHResources isAtLeastiOSVersion:11 subversion:0] && [XENHResources lsenabled]) {
        if (wallpaperEffectView) {
            [self.slideableContentView insertSubview:backgroundViewController.view aboveSubview:wallpaperEffectView];
        } else {
            [self.slideableContentView insertSubview:backgroundViewController.view atIndex:0];
        }
    }
}

#pragma mark Destroy UI on unlock (iOS 11)

static void _logos_method$SpringBoard$SBDashBoardView$viewControllerDidDisappear(_LOGOS_SELF_TYPE_NORMAL SBDashBoardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDashBoardView$viewControllerDidDisappear ? _logos_orig$SpringBoard$SBDashBoardView$viewControllerDidDisappear : (__typeof__(_logos_orig$SpringBoard$SBDashBoardView$viewControllerDidDisappear))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardView, @selector(viewControllerDidDisappear)))(self, _cmd);
    
    
    if ([XENHResources isAtLeastiOSVersion:11 subversion:0] && [XENHResources lsenabled]) {
        
        if (![XENHResources LSPersistentWidgets]) {
            XENlog(@"Unloading background HTML if present...");
            [backgroundViewController unloadWidgets];
            [backgroundViewController.view removeFromSuperview];
            backgroundViewController = nil;
            
            XENlog(@"Unloading foreground HTML if present...");
            
            [foregroundViewController unloadWidgets];
            [foregroundViewController.view removeFromSuperview];
            foregroundViewController = nil;
        } else {
            XENlog(@"Unloading background HTML for persistent mode");
            [backgroundViewController.view removeFromSuperview];
            [backgroundViewController setPaused:YES];
            
            XENlog(@"Unloading foreground HTML for persistent mode");
            [foregroundViewController.view removeFromSuperview];
            [foregroundViewController setPaused:YES];
        }
        
        [XENHResources setHasSeenFirstUnlock:YES];
        
        if (lockscreenForegroundWrapperController) {
            
            [[(UIViewController*)lockscreenForegroundWrapperController view] removeFromSuperview];
            [(UIViewController*)lockscreenForegroundWrapperController removeFromParentViewController];
            
            lockscreenForegroundWrapperController = nil;
        }
        
        
        
        if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
            [foregroundHiddenRequesters removeAllObjects];
            foregroundHiddenRequesters = nil;
        }
        
        lsBackgroundForwarder = nil;
    }
}



#pragma mark Fix touch through to the LS notifications gesture. (iOS 11)



static UIView * _logos_method$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint point, UIEvent * event) {
    
    if (![XENHResources lsenabled]) {
        return (_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
    
    UIView *orig = (_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    
    if (!foregroundViewController) {
        return orig;
    }
    
    UIView *outview = orig;
    
    if ([(UIView*)orig class] == objc_getClass("NCNotificationListCollectionView")) {
        
        
        
        if (![XENHResources LSWidgetScrollPriority] && point.y >= SCREEN_HEIGHT*0.81) {
            outview = orig;
        } else {
            outview = [lockscreenForegroundWrapperController.view hitTest:point withEvent:event];
        
            if (!outview)
                outview = orig;
        }
    }
    
    return outview;
    
    
}



#pragma mark Backing view controller for LS foreground webview. (iOS 10+)



static long long _logos_method$SpringBoard$XENDashBoardWebViewController$presentationTransition(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}

static long long _logos_method$SpringBoard$XENDashBoardWebViewController$presentationPriority(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1; 
}

static long long _logos_method$SpringBoard$XENDashBoardWebViewController$presentationType(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}

static long long _logos_method$SpringBoard$XENDashBoardWebViewController$scrollingStrategy(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1; 
}







static void _logos_method$SpringBoard$XENDashBoardWebViewController$setWebView$(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView* view) {
    [self.view insertSubview:view atIndex:0];
    
    
}

static void _logos_method$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews(_LOGOS_SELF_TYPE_NORMAL XENDashBoardWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews ? _logos_orig$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews : (__typeof__(_logos_orig$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$XENDashBoardWebViewController, @selector(viewDidLayoutSubviews)))(self, _cmd);
    
    for (UIView *view in self.view.subviews) {
        view.frame = self.view.bounds;
    }
}





static SBDashBoardMainPageContentViewController* _logos_method$SpringBoard$SBDashBoardMainPageContentViewController$init(_LOGOS_SELF_TYPE_INIT SBDashBoardMainPageContentViewController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$init ? _logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$init : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$init))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageContentViewController, @selector(init)))(self, _cmd);
    
    dashBoardMainPageContentViewController = orig;
    
    return orig;
}






static SBDashBoardMainPageViewController* _logos_method$SpringBoard$SBDashBoardMainPageViewController$init(_LOGOS_SELF_TYPE_INIT SBDashBoardMainPageViewController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBDashBoardMainPageViewController$init ? _logos_orig$SpringBoard$SBDashBoardMainPageViewController$init : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageViewController$init))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageViewController, @selector(init)))(self, _cmd);
    
    dashBoardMainPageViewController = orig;
    
    return orig;
}



#pragma mark Hide clock (iOS 11+)



static void _logos_method$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, SBDashBoardAppearance* arg1) {
    (_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$ ? _logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageContentViewController, @selector(aggregateAppearance:)))(self, _cmd, arg1);
    
    
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        return;
    }
    
    SBDashBoardComponent *dateView = nil;
    
    for (SBDashBoardComponent *component in arg1.components) {
        if (component.type == 1) {
            dateView = component;
            break;
        }
    }
    
    if ([XENHResources lsenabled] && [XENHResources _hideClock10] == 1) {
        dateView.hidden = YES;
    } else if (![XENHResources lsenabled] || [XENHResources _hideClock10] != 1) {
        dateView.hidden = NO;
    }
}



#pragma mark Hide Torch and Camera (iOS 11+)



static _Bool _logos_method$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([XENHResources lsenabled] && [XENHResources LSHideTorchAndCamera]) {
        return NO;
    }
    
    return (_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera ? _logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera : (__typeof__(_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardQuickActionsViewController, @selector(hasCamera)))(self, _cmd);
}

static _Bool _logos_method$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([XENHResources lsenabled] && [XENHResources LSHideTorchAndCamera]) {
        return NO;
    }
    
    return (_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight ? _logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight : (__typeof__(_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardQuickActionsViewController, @selector(hasFlashlight)))(self, _cmd);
}



#pragma mark Handle orientation (iOS 13+)



static void _logos_method$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGSize arg1, id arg2) {
    (_logos_orig$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$ ? _logos_orig$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardViewController, @selector(viewWillTransitionToSize:withTransitionCoordinator:)))(self, _cmd, arg1, arg2);
    
    [arg2 animateAlongsideTransition:^(id  _Nonnull context) {
        
        if ([XENHResources lsenabled]) {
            
            
            
            int orientation = 1; 
            if (arg1.width == SCREEN_MAX_LENGTH) {
                orientation = 3;
            }
            
            [XENHResources setCurrentOrientation:orientation];
            
            [backgroundViewController rotateToOrientation:orientation];
            [foregroundViewController rotateToOrientation:orientation];
            
            backgroundViewController.view.frame = CGRectMake(0, 0, arg1.width, arg1.height);
            foregroundViewController.view.frame = CGRectMake(0, 0, arg1.width, arg1.height);
        }
        
    } completion:^(id  _Nonnull context) {

    }];
}



#pragma mark Prevent touches cancelling when scrolling on-widget (iOS 10+)



static _Bool _logos_method$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$(_LOGOS_SELF_TYPE_NORMAL SBHorizontalScrollFailureRecognizer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGPoint arg1, double arg2) {
    return foregroundViewController != nil ? NO : (_logos_orig$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$ ? _logos_orig$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$ : (__typeof__(_logos_orig$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHorizontalScrollFailureRecognizer, @selector(_isOutOfBounds:forAngle:)))(self, _cmd, arg1, arg2);
}





static BOOL _logos_method$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$(_LOGOS_SELF_TYPE_NORMAL SBPagedScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView * view) {
    BOOL orig = (_logos_orig$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$ ? _logos_orig$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$ : (__typeof__(_logos_orig$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBPagedScrollView, @selector(touchesShouldCancelInContentView:)))(self, _cmd, view);
    
    if ([XENHResources lsenabled] && foregroundViewController) {
        
        if ([XENHResources LSWidgetScrollPriority]) {
            SBDashBoardViewController *cont = [[objc_getClass("SBLockScreenManager") sharedInstance] lockScreenViewController];
            BOOL onMainPage = cont.lastSettledPageIndex == [cont _indexOfMainPage];
        
            if (onMainPage) {
                return NO;
            }
        } else {
            
            
            
            if ([foregroundViewController isAnyWidgetTrackingTouch]) {
                return NO;
            }
        }
    }
    
    return orig;
}



#pragma mark Hide clock (iOS 9+)



static void _logos_method$SpringBoard$SBFLockScreenDateView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBFLockScreenDateView$layoutSubviews ? _logos_orig$SpringBoard$SBFLockScreenDateView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBFLockScreenDateView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFLockScreenDateView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources isAtLeastiOSVersion:10 subversion:0]) {
        if ([XENHResources lsenabled] && [XENHResources _hideClock10] == 2) {
            self.hidden = YES;
        }
        return;
    }
    
    if ([XENHResources lsenabled] && [XENHResources hideClock]) {
        self.hidden = YES;
    }
}

static void _logos_method$SpringBoard$SBFLockScreenDateView$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL hidden) {
    if ([XENHResources isAtLeastiOSVersion:10 subversion:0]) {
        ([XENHResources lsenabled] && [XENHResources _hideClock10] == 2 ? (_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ ? _logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFLockScreenDateView, @selector(setHidden:)))(self, _cmd, YES) : (_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ ? _logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFLockScreenDateView, @selector(setHidden:)))(self, _cmd, hidden));
    } else {
        ([XENHResources lsenabled] && [XENHResources hideClock] ? (_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ ? _logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFLockScreenDateView, @selector(setHidden:)))(self, _cmd, YES) : (_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ ? _logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFLockScreenDateView, @selector(setHidden:)))(self, _cmd, hidden));
    }
}



#pragma mark Same sized status bar (iOS 10+)



static long long _logos_method$SpringBoard$SBDashBoardViewController$statusBarStyle(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [XENHResources lsenabled] && [XENHResources useSameSizedStatusBar] ? 0 : (_logos_orig$SpringBoard$SBDashBoardViewController$statusBarStyle ? _logos_orig$SpringBoard$SBDashBoardViewController$statusBarStyle : (__typeof__(_logos_orig$SpringBoard$SBDashBoardViewController$statusBarStyle))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardViewController, @selector(statusBarStyle)))(self, _cmd);
}



#pragma mark Hide LS status bar (iOS 10+)



static void _logos_method$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardPageViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, SBDashBoardAppearance* arg1) {
    (_logos_orig$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$ ? _logos_orig$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardPageViewController, @selector(aggregateAppearance:)))(self, _cmd, arg1);
    
    
    if ([XENHResources lsenabled] && [XENHResources hideStatusBar]) {
        SBDashBoardComponent *statusBar = [[objc_getClass("SBDashBoardComponent") statusBar] hidden:YES];
        [arg1 addComponent:statusBar];
    }
}



#pragma mark Clock in status bar (iOS 10+)



static _Bool _logos_method$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BOOL onMainPage = self.lastSettledPageIndex == [self _indexOfMainPage];
    if ([XENHResources lsenabled] && [XENHResources _hideClock10] == 1 && ![XENHResources LSShowClockInStatusBar] && onMainPage) {
        return NO;
    }
    
    return [XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled] ? YES : (_logos_orig$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar ? _logos_orig$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar : (__typeof__(_logos_orig$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardViewController, @selector(wantsTimeInStatusBar)))(self, _cmd);
}

static _Bool _logos_method$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime(_LOGOS_SELF_TYPE_NORMAL SBDashBoardViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BOOL onMainPage = self.lastSettledPageIndex == [self _indexOfMainPage];
    if ([XENHResources lsenabled] && [XENHResources _hideClock10] == 1 && ![XENHResources LSShowClockInStatusBar] && onMainPage) {
        return NO;
    }
    
    return [XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled] ? YES : (_logos_orig$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime ? _logos_orig$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime : (__typeof__(_logos_orig$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardViewController, @selector(shouldShowLockStatusBarTime)))(self, _cmd);
}



#pragma mark Clock in status bar (iOS 11 fixes)







static void _logos_method$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(setTimeCloaked:)))(self, _cmd, arg1);
        return;
    }
    
    if ([XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(setTimeCloaked:)))(self, _cmd, NO);
    } else {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(setTimeCloaked:)))(self, _cmd, arg1);
    }
}

static void _logos_method$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1, _Bool arg2, double arg3) {
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:)))(self, _cmd, arg1, arg2, arg3);
        return;
    }
    
    if ([XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:)))(self, _cmd, YES, arg2, arg3);
    } else {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:)))(self, _cmd, arg1, arg2, arg3);
    }
}

static void _logos_method$SpringBoard$SBMainStatusBarStateProvider$enableTime$(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:)))(self, _cmd, arg1);
        return;
    }
    
    if ([XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled]) {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:)))(self, _cmd, YES);
    } else {
        (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$ : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:)))(self, _cmd, arg1);
    }
}

static _Bool _logos_method$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled(_LOGOS_SELF_TYPE_NORMAL SBMainStatusBarStateProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        return (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(isTimeEnabled)))(self, _cmd);
    }
    
    if ([XENHResources LSShowClockInStatusBar] && [XENHResources lsenabled]) {
        return YES;
    } else {
        return (_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled ? _logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled : (__typeof__(_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainStatusBarStateProvider, @selector(isTimeEnabled)))(self, _cmd);
    }
}



#pragma mark Ensure to always reset idle timer when we see touches in the LS (iOS 9+)

void resetIdleTimer() {
    
    [(SBIdleTimerGlobalCoordinator*)[objc_getClass("SBIdleTimerGlobalCoordinator") sharedInstance] resetIdleTimer];
}

void cancelIdleTimer() {
    
    
    resetIdleTimer();
}




static void _logos_method$SpringBoard$SBCoverSheetWindow$sendEvent$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIEvent * event) {
    
    
    if ([[objc_getClass("SBLockScreenManager") sharedInstance] isUILocked]) {
        UITouch *touch = [event.allTouches anyObject];
        if (touch.phase == UITouchPhaseBegan) {
            cancelIdleTimer();
        } else if (touch.phase == UITouchPhaseEnded || touch.phase == UITouchPhaseCancelled) {
            resetIdleTimer();
        }
    }
    
    (_logos_orig$SpringBoard$SBCoverSheetWindow$sendEvent$ ? _logos_orig$SpringBoard$SBCoverSheetWindow$sendEvent$ : (__typeof__(_logos_orig$SpringBoard$SBCoverSheetWindow$sendEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBCoverSheetWindow, @selector(sendEvent:)))(self, _cmd, event);
}



#pragma mark Hide STU view if necessary (iOS 10)



static void _logos_method$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, BOOL arg3) {
    if ([XENHResources lsenabled] && [XENHResources hideSTU]) {
        (_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$ ? _logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$ : (__typeof__(_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBUICallToActionLabel, @selector(setText:forLanguage:animated:)))(self, _cmd, @"", arg2, arg3);
    } else {
        (_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$ ? _logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$ : (__typeof__(_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBUICallToActionLabel, @selector(setText:forLanguage:animated:)))(self, _cmd, arg1, arg2, arg3);
    }
}



#pragma mark Hide STU view if necessary (iOS 11) and...
#pragma mark Hide Home Bar (iOS 11 + iPhone X) and...
#pragma mark Hide D22 Control Centre grabber (iOS 11 + iPhone X)



static void _logos_method$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDashBoardTeachableMomentsContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews ? _logos_orig$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardTeachableMomentsContainerView, @selector(layoutSubviews)))(self, _cmd);
    
#if TARGET_IPHONE_SIMULATOR==0
    UIView *calltoaction = MSHookIvar<UIView*>(self, "_callToActionLabelContainerView");
    calltoaction.hidden = [XENHResources lsenabled] && [XENHResources hideSTU];
    
    UIView *homebar = MSHookIvar<UIView*>(self, "_homeAffordanceContainerView");
    homebar.hidden = [XENHResources lsenabled] && [XENHResources LSHideHomeBar];
    
    if ([XENHResources isAtLeastiOSVersion:11 subversion:2]) {
        UIView *grabber = MSHookIvar<UIView*>(self, "_controlCenterGrabberView");
        grabber.hidden = [XENHResources lsenabled] && [XENHResources LSHideD22CCGrabber];
    }
#endif
}



#pragma mark Hide Face ID padlock (iOS 11 + iPhone X)



static void _logos_method$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSInteger state, BOOL animated, NSInteger options, id completion) {
    (_logos_orig$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$ ? _logos_orig$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$ : (__typeof__(_logos_orig$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBUIProudLockIconView, @selector(setState:animated:options:completion:)))(self, _cmd, state, animated, options, completion);
    
    
    
    
    
    
    
    switch ([self state]) {
        case 5:
            self.hidden = NO;
            break;
        default:
            self.hidden = [XENHResources lsenabled] && [XENHResources LSHideFaceIDPadlock];
            break;
    }
}

static void _logos_method$SpringBoard$SBUIProudLockIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBUIProudLockIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBUIProudLockIconView$layoutSubviews ? _logos_orig$SpringBoard$SBUIProudLockIconView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBUIProudLockIconView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBUIProudLockIconView, @selector(layoutSubviews)))(self, _cmd);
    
    switch ([self state]) {
        case 0:
        case 1:
        case 2:
            self.hidden = [XENHResources lsenabled] && [XENHResources LSHideFaceIDPadlock];
            break;
        default:
            self.hidden = NO;
    }
}



#pragma mark Hide Handoff grabber (iOS 10)



static void _logos_method$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView(_LOGOS_SELF_TYPE_NORMAL SBDashBoardMainPageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView ? _logos_orig$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView : (__typeof__(_logos_orig$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardMainPageView, @selector(_layoutSlideUpAppGrabberView)))(self, _cmd);
    
    if ([XENHResources lsenabled] && [XENHResources hideCameraGrabber]) {
#if TARGET_IPHONE_SIMULATOR==0
        UIView *grabber = MSHookIvar<UIView*>(self, "_slideUpAppGrabberView");
        grabber.hidden = YES;
        grabber.userInteractionEnabled = YES;
#endif
    } else {
#if TARGET_IPHONE_SIMULATOR==0
        UIView *grabber = MSHookIvar<UIView*>(self, "_slideUpAppGrabberView");
        grabber.hidden = NO;
        grabber.userInteractionEnabled = YES;
#endif
    }
}



#pragma mark Hide page control dots (iOS 11)



static void _logos_method$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl(_LOGOS_SELF_TYPE_NORMAL SBDashBoardFixedFooterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl ? _logos_orig$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl : (__typeof__(_logos_orig$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardFixedFooterView, @selector(_layoutPageControl)))(self, _cmd);
    
    if ([XENHResources lsenabled] && [XENHResources hidePageControlDots]) {
#if TARGET_IPHONE_SIMULATOR==0
        UIView *control = MSHookIvar<UIView*>(self, "_pageControl");
        control.hidden = YES;
        control.userInteractionEnabled = NO;
#endif
    } else {
#if TARGET_IPHONE_SIMULATOR==0
        UIView *control = MSHookIvar<UIView*>(self, "_pageControl");
        control.hidden = NO;
        control.userInteractionEnabled = NO;
#endif
    }
}



#pragma mark Lockscreen dim duration adjustments (iOS 11+)



static void _logos_method$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDefaults* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults ? _logos_orig$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults : (__typeof__(_logos_orig$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIdleTimerDefaults, @selector(_bindAndRegisterDefaults)))(self, _cmd);
    
    













    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class clazz = objc_getClass("SBIdleTimerDefaults");
        
        SEL originalSelector = @selector(minimumLockscreenIdleTime);
        SEL swizzledSelector = @selector(_xenhtml_minimumLockscreenIdleTime);
        
        Method originalMethod = class_getInstanceMethod(clazz, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(clazz, swizzledSelector);
        
        method_exchangeImplementations(originalMethod, swizzledMethod);
    });
}


static CGFloat _logos_method$SpringBoard$SBIdleTimerDefaults$_xenhtml_minimumLockscreenIdleTime(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDefaults* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    if ([XENHResources isBelowiOSVersion:11 subversion:0]) {
        return 0;
    }
    
    if ([XENHResources lsenabled]) {
        return [XENHResources lockScreenIdleTime];
    }
    
    if (setupWindow || ![XENHResources hasDisplayedSetupUI]) {
        return 1000;
    }
    
    return 0;
}



#pragma mark Hide SBHTML when locked.



static void _logos_method$SpringBoard$SBLockScreenManager$_setUILocked$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    (_logos_orig$SpringBoard$SBLockScreenManager$_setUILocked$ ? _logos_orig$SpringBoard$SBLockScreenManager$_setUILocked$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenManager$_setUILocked$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenManager, @selector(_setUILocked:)))(self, _cmd, arg1);

    if (sbhtmlViewController)
        [sbhtmlViewController setPaused:arg1];
    if (sbhtmlForegroundViewController)
        [sbhtmlForegroundViewController setPaused:arg1];
}



#pragma mark Hide SBHTML when in-app



static void _logos_method$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    
    
    
    XENlog(@"Showing SBHTML due to application exit, and the assumption that we will progress to the homescreen");
    [sbhtmlViewController setPaused:NO];
    [sbhtmlForegroundViewController setPaused:NO];
    
    [sbhtmlViewController doJITWidgetLoadIfNecessary];
    [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
    
    (_logos_orig$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$ ? _logos_orig$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$ : (__typeof__(_logos_orig$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainWorkspace, @selector(applicationProcessDidExit:withContext:)))(self, _cmd, arg1, arg2);
}

static void _logos_method$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, FBProcessState* arg2, FBProcessState* arg3) {
    
    
    
    
    if (![arg2 isForeground] && [arg3 isForeground]) {
        
        
        
        
        XENlog(@"Hiding SBHTML due to an application becoming foreground (failsafe).");
        [sbhtmlViewController setPaused:YES animated:YES];
        [sbhtmlForegroundViewController setPaused:YES animated:YES];
    
    } else if ([arg2 isForeground] && ![arg3 isForeground]) {
        
        
        dispatch_async(dispatch_get_main_queue(), ^(){
            
            BOOL isSpringBoardForeground = [(SpringBoard*)[UIApplication sharedApplication] _accessibilityFrontMostApplication] == nil;
            
            if (isSpringBoardForeground) {
                XENlog(@"Showing SBHTML due to an application leaving foregound (failsafe).");
                [sbhtmlViewController setPaused:NO];
                [sbhtmlForegroundViewController setPaused:NO];
                
                [sbhtmlViewController doJITWidgetLoadIfNecessary];
                [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
            }
        });
    }
    
    (_logos_orig$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$ ? _logos_orig$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$ : (__typeof__(_logos_orig$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainWorkspace, @selector(process:stateDidChangeFromState:toState:)))(self, _cmd, arg1, arg2, arg3);
}







static void _logos_method$SpringBoard$SBApplication$willAnimateDeactivation$(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    XENlog(@"Showing SBHTML due to an application animating deactivation");
    [sbhtmlViewController setPaused:NO];
    [sbhtmlForegroundViewController setPaused:NO];
    
    [sbhtmlViewController doJITWidgetLoadIfNecessary];
    [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
    
    (_logos_orig$SpringBoard$SBApplication$willAnimateDeactivation$ ? _logos_orig$SpringBoard$SBApplication$willAnimateDeactivation$ : (__typeof__(_logos_orig$SpringBoard$SBApplication$willAnimateDeactivation$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBApplication, @selector(willAnimateDeactivation:)))(self, _cmd, arg1);
}







static void _logos_method$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    XENlog(@"Showing SBHTML due to opening the Application Switcher");
    [sbhtmlViewController setPaused:NO];
    [sbhtmlForegroundViewController setPaused:NO];
    
    [sbhtmlViewController doJITWidgetLoadIfNecessary];
    [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
    
    (_logos_orig$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$ ? _logos_orig$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$ : (__typeof__(_logos_orig$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainSwitcherViewController, @selector(performPresentationAnimationForTransitionRequest:withCompletion:)))(self, _cmd, arg1, arg2);
}







static _Bool _logos_method$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$(_LOGOS_SELF_TYPE_NORMAL SBMainWorkspace* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, SBMainWorkspaceTransitionRequest* arg1) {
    
    
    
    
    
    if ([XENHResources isBelowiOSVersion:11 subversion:0] || [[objc_getClass("SBLockScreenManager") sharedInstance] isUILocked]) {
        return (_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$ ? _logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$ : (__typeof__(_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainWorkspace, @selector(_preflightTransitionRequest:)))(self, _cmd, arg1);
    }
    
    long long environmentMode = arg1.applicationContext.layoutState.unlockedEnvironmentMode;
    
    
    
    
    
    switch (environmentMode) {
        case 1:
            XENlog(@"Showing SBHTML due to transitioning to the Homescreen (SBMainWorkspace)");
            
            [sbhtmlViewController setPaused:NO];
            [sbhtmlForegroundViewController setPaused:NO];
            
            [sbhtmlViewController doJITWidgetLoadIfNecessary];
            [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
            
            break;
        case 2:
            XENlog(@"Showing SBHTML due to opening the Application Switcher (SBMainWorkspace)");
            
            [sbhtmlViewController setPaused:NO];
            [sbhtmlForegroundViewController setPaused:NO];
            
            [sbhtmlViewController doJITWidgetLoadIfNecessary];
            [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
            
            break;
    }
    
    return (_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$ ? _logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$ : (__typeof__(_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBMainWorkspace, @selector(_preflightTransitionRequest:)))(self, _cmd, arg1);
}









static void _logos_method$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherGestureWorkspaceTransaction* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    XENlog(@"Showing SBHTML due to starting a fluid gesture");
    [sbhtmlViewController setPaused:NO];
    [sbhtmlForegroundViewController setPaused:NO];
    
    [sbhtmlViewController doJITWidgetLoadIfNecessary];
    [sbhtmlForegroundViewController doJITWidgetLoadIfNecessary];
    
    (_logos_orig$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$ ? _logos_orig$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$ : (__typeof__(_logos_orig$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction, @selector(_beginWithGesture:)))(self, _cmd, arg1);
}



#pragma mark Hide LockHTML when the display is off. (iOS 11)



static void _logos_method$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$(_LOGOS_SELF_TYPE_NORMAL SBScreenWakeAnimationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool wokeLS) {
    if (!wokeLS && [XENHResources LSUseBatteryManagement]) {
        
        XENlog(@"Hiding Lockscreen HTML due to display turning off.");
        
        [foregroundViewController setPaused:YES];
        [backgroundViewController setPaused:YES];
        
        [XENHResources setDisplayState:NO]; 
    }
    
    (_logos_orig$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$ ? _logos_orig$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$ : (__typeof__(_logos_orig$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBScreenWakeAnimationController, @selector(_handleAnimationCompletionIfNecessaryForWaking:)))(self, _cmd, wokeLS);
}

static void _logos_method$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$(_LOGOS_SELF_TYPE_NORMAL SBScreenWakeAnimationController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1, id arg2) {
    if (arg1 && [XENHResources LSUseBatteryManagement]) {
        XENlog(@"Showing Lockscreen HTML due to display turning on.");
        
        [foregroundViewController setPaused:NO];
        [backgroundViewController setPaused:NO];
        
        [XENHResources setDisplayState:YES]; 
    }
    
    [foregroundViewController doJITWidgetLoadIfNecessary];
    [backgroundViewController doJITWidgetLoadIfNecessary];
    
    (_logos_orig$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$ ? _logos_orig$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$ : (__typeof__(_logos_orig$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBScreenWakeAnimationController, @selector(_startWakeAnimationsForWaking:animationSettings:)))(self, _cmd, arg1, arg2);
}






static void _logos_method$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification* arg1) {
    (_logos_orig$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$ ? _logos_orig$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenManager, @selector(_handleBacklightLevelWillChange:)))(self, _cmd, arg1);
    
    if ([XENHResources isAtLeastiOSVersion:11 subversion:0] && [XENHResources lsenabled]) {
        NSDictionary *userInfo = arg1.userInfo;
        
        CGFloat newBacklight = [[userInfo objectForKey:@"SBBacklightNewFactorKey"] floatValue];
        CGFloat oldBacklight = [[userInfo objectForKey:@"SBBacklightOldFactorKey"] floatValue];
        
        if (oldBacklight == 0.0 && newBacklight > 0.0) {
            if ([XENHResources LSUseBatteryManagement]) {
                XENlog(@"Showing Lockscreen HTML due to display turning on (failsafe).");
                
                [foregroundViewController setPaused:NO];
                [backgroundViewController setPaused:NO];
                
                [XENHResources setDisplayState:YES]; 
            }
            
            [foregroundViewController doJITWidgetLoadIfNecessary];
            [backgroundViewController doJITWidgetLoadIfNecessary];
        }
    }
}



#pragma mark SBHTML (iOS 9+)

@interface UIViewController (Private)
- (id)_screen;
@end



static void _logos_method$SpringBoard$SBHomeScreenViewController$loadView(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBHomeScreenViewController$loadView ? _logos_orig$SpringBoard$SBHomeScreenViewController$loadView : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenViewController$loadView))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenViewController, @selector(loadView)))(self, _cmd);
    
    
    UIView<UIGestureRecognizerDelegate> *mainView = (id)self.view;
    
    XENlog(@"Injecting into homescreen");
    [XENHResources reloadSettings];
    
    if ([XENHResources SBEnabled] && [XENHResources widgetLayerHasContentForLocation:kLocationSBBackground]) {
        
        
        
        BOOL isOnMainScreen = [[self _screen] isEqual:[UIScreen mainScreen]];
        
        if (isOnMainScreen) {
            sbhtmlViewController = [XENHResources widgetLayerControllerForLocation:kLocationSBBackground];
            [mainView insertSubview:sbhtmlViewController.view atIndex:0];
            
            sbhtmlForwardingGesture.widgetController = sbhtmlViewController;
        }
    }
    
    [self _xenhtml_addTouchRecogniser];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlUpdate"
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recievedSBHTMLUpdateForGesture:) name:@"com.matchstic.xenhtml/sbhtmlUpdateGesture" object:nil];
}

static void _logos_method$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGSize size, int orientation, id transitionContext) {
    (_logos_orig$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$ ? _logos_orig$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$ : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenViewController, @selector(_animateTransitionToSize:andInterfaceOrientation:withTransitionContext:)))(self, _cmd, size, orientation, transitionContext);
    
    
    if ([XENHResources SBEnabled] && [self shouldAutorotate]) {
        [XENHResources setCurrentOrientation:orientation];
        
        [sbhtmlViewController rotateToOrientation:orientation];
        [sbhtmlForegroundViewController rotateToOrientation:orientation];
    }
}


static void _logos_method$SpringBoard$SBHomeScreenViewController$_xenhtml_addTouchRecogniser(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIView<UIGestureRecognizerDelegate> *mainView = (id)self.view;
    
    if (mainView && [XENHResources SBAllowTouch]) {
        
        
        
        NSArray *ignoredViews = @[];
        
        sbhtmlForwardingGesture = [[XENHTouchForwardingRecognizer alloc] initWithWidgetController:sbhtmlViewController andIgnoredViewClasses:ignoredViews];
        
        CGFloat inset = 30.0;
        sbhtmlForwardingGesture.safeAreaInsets = UIEdgeInsetsMake([UIApplication sharedApplication].statusBarFrame.size.height + inset, inset, inset, inset);
        
        
        [mainView addGestureRecognizer:sbhtmlForwardingGesture];
    }
}


static void _logos_method$SpringBoard$SBHomeScreenViewController$recievedSBHTMLUpdateForGesture$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    
    if ([XENHResources SBEnabled] && [XENHResources SBAllowTouch]) {
        
        if (!sbhtmlForwardingGesture) {
            [self _xenhtml_addTouchRecogniser];
        }
    } else {
        
        UIView<UIGestureRecognizerDelegate> *mainView = (id)self.view;
        [mainView removeGestureRecognizer:sbhtmlForwardingGesture];
        
        sbhtmlForwardingGesture = nil;
    }
}



static void _logos_method$SpringBoard$SBHomeScreenViewController$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled] && [XENHResources widgetLayerHasContentForLocation:kLocationSBBackground]) {
        if (sbhtmlViewController) {
            [sbhtmlViewController noteUserPreferencesDidChange];
        } else {
            UIView *mainView = self.view;
        
            if ([XENHResources widgetLayerHasContentForLocation:kLocationSBBackground]) {
                XENlog(@"Loading SBHTML view");
                
                
                
                BOOL isOnMainScreen = [[self _screen] isEqual:[UIScreen mainScreen]];
                
                if (isOnMainScreen) {
                    sbhtmlViewController = [XENHResources widgetLayerControllerForLocation:kLocationSBBackground];
                    [mainView insertSubview:sbhtmlViewController.view atIndex:0];
                    
                    sbhtmlForwardingGesture.widgetController = sbhtmlViewController;
                }
            }
        }
    } else if (sbhtmlViewController) {
        [sbhtmlViewController unloadWidgets];
        [sbhtmlViewController.view removeFromSuperview];
        sbhtmlViewController = nil;
    }
}

#pragma mark Handle SBHTML touches (iOS 13+)


static BOOL _logos_method$SpringBoard$SBHomeScreenViewController$shouldIgnoreWebTouch(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}


static BOOL _logos_method$SpringBoard$SBHomeScreenViewController$isAnyTouchOverActiveArea$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSSet * touches) {
    return YES;
}





static void _logos_method$SpringBoard$SBHomeScreenView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBHomeScreenView$layoutSubviews ? _logos_orig$SpringBoard$SBHomeScreenView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources SBEnabled] && sbhtmlViewController) {
        sbhtmlViewController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }
}

static void _logos_method$SpringBoard$SBHomeScreenView$insertSubview$atIndex$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView* view, int index) {
    (_logos_orig$SpringBoard$SBHomeScreenView$insertSubview$atIndex$ ? _logos_orig$SpringBoard$SBHomeScreenView$insertSubview$atIndex$ : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenView$insertSubview$atIndex$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenView, @selector(insertSubview:atIndex:)))(self, _cmd, view, index);
    
    
    if ([XENHResources SBEnabled] && sbhtmlViewController && [[view class] isEqual:objc_getClass("SBIconContentView")]) {
        [self insertSubview:sbhtmlViewController.view atIndex:0];
    }
}

static void _logos_method$SpringBoard$SBHomeScreenView$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL hidden) {
    (_logos_orig$SpringBoard$SBHomeScreenView$setHidden$ ? _logos_orig$SpringBoard$SBHomeScreenView$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenView$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenView, @selector(setHidden:)))(self, _cmd, hidden);
    
    if ([XENHResources SBEnabled] && sbhtmlViewController) {
        sbhtmlViewController.view.hidden = hidden;
    }
}



#pragma mark Hide dock blur (iOS 13+)



static SBDockView* _logos_method$SpringBoard$SBDockView$initWithDockListView$forSnapshot$(_LOGOS_SELF_TYPE_INIT SBDockView* __unused self, SEL __unused _cmd, id arg1, BOOL arg2) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBDockView$initWithDockListView$forSnapshot$ ? _logos_orig$SpringBoard$SBDockView$initWithDockListView$forSnapshot$ : (__typeof__(_logos_orig$SpringBoard$SBDockView$initWithDockListView$forSnapshot$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDockView, @selector(initWithDockListView:forSnapshot:)))(self, _cmd, arg1, arg2);
    
    [[NSNotificationCenter defaultCenter] addObserver:orig
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlDockUpdate"
                                               object:nil];
    
    return orig;
}

static void _logos_method$SpringBoard$SBDockView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBDockView$layoutSubviews ? _logos_orig$SpringBoard$SBDockView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBDockView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDockView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources SBEnabled] && [XENHResources hideBlurredDockBG]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_backgroundView") setHidden:YES];
        [MSHookIvar<UIView*>(self, "_backgroundImageView") setHidden:YES];
        [MSHookIvar<UIView*>(self, "_accessibilityBackgroundView") setHidden:YES];
#endif
    }
}

static void _logos_method$SpringBoard$SBDockView$_backgroundContrastDidChange$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBDockView$_backgroundContrastDidChange$ ? _logos_orig$SpringBoard$SBDockView$_backgroundContrastDidChange$ : (__typeof__(_logos_orig$SpringBoard$SBDockView$_backgroundContrastDidChange$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDockView, @selector(_backgroundContrastDidChange:)))(self, _cmd, arg1);
    
    if ([XENHResources SBEnabled] && [XENHResources hideBlurredDockBG]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_backgroundView") setHidden:YES];
        [MSHookIvar<UIView*>(self, "_backgroundImageView") setHidden:YES];
        [MSHookIvar<UIView*>(self, "_accessibilityBackgroundView") setHidden:YES];
#endif
    }
}


static void _logos_method$SpringBoard$SBDockView$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_backgroundView") setHidden:[XENHResources hideBlurredDockBG]];
        [MSHookIvar<UIView*>(self, "_backgroundImageView") setHidden:[XENHResources hideBlurredDockBG]];
        [MSHookIvar<UIView*>(self, "_accessibilityBackgroundView") setHidden:[XENHResources hideBlurredDockBG]];
#endif
    }
}



#pragma mark Hide dock blur (iOS 13 + iPad)



static SBFloatingDockPlatterView* _logos_method$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$(_LOGOS_SELF_TYPE_INIT SBFloatingDockPlatterView* __unused self, SEL __unused _cmd, double arg1, double arg2) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$ ? _logos_orig$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$ : (__typeof__(_logos_orig$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFloatingDockPlatterView, @selector(initWithReferenceHeight:maximumContinuousCornerRadius:)))(self, _cmd, arg1, arg2);
    
    [[NSNotificationCenter defaultCenter] addObserver:orig
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlDockUpdate"
                                               object:nil];
    
    return orig;
}

static void _logos_method$SpringBoard$SBFloatingDockPlatterView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBFloatingDockPlatterView$layoutSubviews ? _logos_orig$SpringBoard$SBFloatingDockPlatterView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBFloatingDockPlatterView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFloatingDockPlatterView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources SBEnabled] && [XENHResources hideBlurredDockBG]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_backgroundView") setHidden:YES];
#endif
    }
}


static void _logos_method$SpringBoard$SBFloatingDockPlatterView$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_backgroundView") setHidden:[XENHResources hideBlurredDockBG]];
#endif
    }
}



#pragma mark Hide folder icon blur (iOS 13+)



static SBFolderIconBackgroundView* _logos_method$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize(_LOGOS_SELF_TYPE_INIT SBFolderIconBackgroundView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize ? _logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize : (__typeof__(_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFolderIconBackgroundView, @selector(initWithDefaultSize)))(self, _cmd);
    
    [[NSNotificationCenter defaultCenter] addObserver:orig
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlFolderUpdate"
                                               object:nil];
    
    return orig;
}

static SBFolderIconBackgroundView* _logos_method$SpringBoard$SBFolderIconBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBFolderIconBackgroundView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithFrame$ ? _logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithFrame$ : (__typeof__(_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithFrame$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFolderIconBackgroundView, @selector(initWithFrame:)))(self, _cmd, arg1);
    
    [[NSNotificationCenter defaultCenter] addObserver:orig
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlFolderUpdate"
                                               object:nil];
    
    return orig;
}

static void _logos_method$SpringBoard$SBFolderIconBackgroundView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFolderIconBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBFolderIconBackgroundView$layoutSubviews ? _logos_orig$SpringBoard$SBFolderIconBackgroundView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBFolderIconBackgroundView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBFolderIconBackgroundView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources SBEnabled] && [XENHResources hideBlurredFolderBG]) {
        [self setHidden:YES];
    }
}


static void _logos_method$SpringBoard$SBFolderIconBackgroundView$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBFolderIconBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled]) {
        [self setHidden:[XENHResources hideBlurredFolderBG]];
    }
}



#pragma mark Hide icon labels (iOS 13+)



static SBIconView* _logos_method$SpringBoard$SBIconView$initWithContentType$(_LOGOS_SELF_TYPE_INIT SBIconView* __unused self, SEL __unused _cmd, unsigned long long arg1) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBIconView$initWithContentType$ ? _logos_orig$SpringBoard$SBIconView$initWithContentType$ : (__typeof__(_logos_orig$SpringBoard$SBIconView$initWithContentType$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconView, @selector(initWithContentType:)))(self, _cmd, arg1);
    
    [[NSNotificationCenter defaultCenter] addObserver:orig
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlIconLabelsUpdate"
                                               object:nil];
    
    return orig;
}

static void _logos_method$SpringBoard$SBIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBIconView$layoutSubviews ? _logos_orig$SpringBoard$SBIconView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBIconView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconView, @selector(layoutSubviews)))(self, _cmd);
    
    if ([XENHResources SBEnabled] && [XENHResources SBHideIconLabels]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_labelView") setHidden:YES];
#endif
    }
}


static void _logos_method$SpringBoard$SBIconView$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled]) {
#if TARGET_IPHONE_SIMULATOR==0
        [MSHookIvar<UIView*>(self, "_labelView") setHidden:[XENHResources SBHideIconLabels]];
#endif
    }
}



#pragma mark Hide SB page dots (iOS 13+)



__attribute__((used)) static BOOL _logos_method$SpringBoard$SBIconListPageControl$_xenhtml_hidden(SBIconListPageControl * __unused self, SEL __unused _cmd) { NSValue * value = objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$SBIconListPageControl$_xenhtml_hidden); BOOL rawValue; [value getValue:&rawValue]; return rawValue; }; __attribute__((used)) static void _logos_method$SpringBoard$SBIconListPageControl$set_xenhtml_hidden(SBIconListPageControl * __unused self, SEL __unused _cmd, BOOL rawValue) { NSValue * value = [NSValue valueWithBytes:&rawValue objCType:@encode(BOOL)]; objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$SBIconListPageControl$_xenhtml_hidden, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$SpringBoard$SBIconListPageControl$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL hidden) {
    if (!hidden && self._xenhtml_hidden && ![XENHResources isPageBarAvailable])
        return;
    
    (_logos_orig$SpringBoard$SBIconListPageControl$setHidden$ ? _logos_orig$SpringBoard$SBIconListPageControl$setHidden$ : (__typeof__(_logos_orig$SpringBoard$SBIconListPageControl$setHidden$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconListPageControl, @selector(setHidden:)))(self, _cmd, hidden);
}





static void _logos_method$SpringBoard$SBRootFolderView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([XENHResources isPageBarAvailable]) {
        
        
        
        
        @try {
            (_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews ? _logos_orig$SpringBoard$SBRootFolderView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(layoutSubviews)))(self, _cmd);
        } @catch (NSException *e) {
            XENlog(@"Caught exception from Pagebar, assuming non-fatal.");
        }
    } else {
        (_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews ? _logos_orig$SpringBoard$SBRootFolderView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(layoutSubviews)))(self, _cmd);
    }
    
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(recievedSBHTMLUpdate:)
                                                     name:@"com.matchstic.xenhtml/sbhtmlPageDotsUpdate"
                                                   object:nil];
    });
    
    if ([XENHResources SBEnabled] && [XENHResources SBHidePageDots] && ![XENHResources isPageBarAvailable]) {
#if TARGET_IPHONE_SIMULATOR==0
        SBIconListPageControl *pageControl = MSHookIvar<SBIconListPageControl*>(self, "_pageControl");
        pageControl._xenhtml_hidden = YES;
        pageControl.hidden = YES;
#endif
    }
    
#pragma mark Layout foreground SBHTML add button and editing view (iOS 13+)
    
    
    [self _xenhtml_layoutAddWidgetButton];
    [self _xenhtml_layoutEditingPlatter];
}


static void _logos_method$SpringBoard$SBRootFolderView$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
#if TARGET_IPHONE_SIMULATOR==0
    SBIconListPageControl *pageControl = MSHookIvar<SBIconListPageControl*>(self, "_pageControl");
    
    
    if ([XENHResources isPageBarAvailable])
        return;
    
    if ([XENHResources SBEnabled]) {
        pageControl._xenhtml_hidden = [XENHResources SBHidePageDots];
        pageControl.hidden = [XENHResources SBHidePageDots];
    } else {
        
        pageControl._xenhtml_hidden = NO;
        pageControl.hidden = NO;
    }
#endif
}



#pragma mark Foreground SBHTML init (iOS 13+)



static SBRootFolderController* _logos_method$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$(_LOGOS_SELF_TYPE_INIT SBRootFolderController* __unused self, SEL __unused _cmd, id arg1, long long arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    [XENHResources setCurrentOrientation:arg2];
    
    return (_logos_orig$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$ ? _logos_orig$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderController, @selector(initWithFolder:orientation:viewMap:context:)))(self, _cmd, arg1, arg2, arg3, arg4);
}

static void _logos_method$SpringBoard$SBRootFolderController$loadView(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBRootFolderController$loadView ? _logos_orig$SpringBoard$SBRootFolderController$loadView : (__typeof__(_logos_orig$SpringBoard$SBRootFolderController$loadView))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderController, @selector(loadView)))(self, _cmd);
    
    XENlog(@"SBRootFolderController loadView");
    
    
    self.contentView.scrollView._xenhtml_isForegroundWidgetHoster = YES;
    
    if ([XENHResources SBEnabled]) {
        
        sbhtmlForegroundViewController = (XENHHomescreenForegroundViewController*)[XENHResources widgetLayerControllerForLocation:kLocationSBForeground];
        [sbhtmlForegroundViewController updatePopoverPresentationController:self];
        
        [self.contentView.scrollView addSubview:sbhtmlForegroundViewController.view];
        
        XENlog(@"Added foreground SBHTML widgets view");
    }
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(recievedSBHTMLUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlUpdate"
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(recievedSBHTMLPerPageUpdate:)
                                                 name:@"com.matchstic.xenhtml/sbhtmlPerPageUpdate"
                                               object:nil];
    
    
    [self.contentView _xenhtml_setDockPositionIfNeeded];
}



static void _logos_method$SpringBoard$SBRootFolderController$recievedSBHTMLUpdate$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if ([XENHResources SBEnabled]) {
        if (sbhtmlForegroundViewController) {
            [sbhtmlForegroundViewController noteUserPreferencesDidChange];
        } else {
            XENlog(@"Loading foreground SBHTML widgets view");
            
            BOOL isOnMainScreen = [[self _screen] isEqual:[UIScreen mainScreen]];
            
            if (isOnMainScreen) {
                sbhtmlForegroundViewController = (XENHHomescreenForegroundViewController*)[XENHResources widgetLayerControllerForLocation:kLocationSBForeground];
                [sbhtmlForegroundViewController updatePopoverPresentationController:self];
                
                
                self.contentView.scrollView._xenhtml_isForegroundWidgetHoster = YES;
                [self.contentView.scrollView addSubview:sbhtmlForegroundViewController.view];
            }
        }
    } else if (sbhtmlForegroundViewController) {
        [sbhtmlForegroundViewController unloadWidgets];
        [sbhtmlForegroundViewController.view removeFromSuperview];
        sbhtmlForegroundViewController = nil;
    }
    
    
    [self.contentView _xenhtml_recievedSettingsUpdate];
    [self.contentView.scrollView _xenhtml_recievedSettingsUpdate];
}


static void _logos_method$SpringBoard$SBRootFolderController$recievedSBHTMLPerPageUpdate$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    
    [self.contentView _xenhtml_recievedSettingsUpdate];
    [self.contentView.scrollView _xenhtml_recievedSettingsUpdate];
}


static id _logos_method$SpringBoard$SBRootFolderController$_xenhtml_contentView(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return self.contentView;
}


static long long _logos_method$SpringBoard$SBRootFolderController$_xenhtml_currentPageIndex(_LOGOS_SELF_TYPE_NORMAL SBRootFolderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return self.currentPageIndex;
}



#pragma mark Foreground SBHTML layout (iOS 13+)



__attribute__((used)) static BOOL _logos_method$SpringBoard$SBIconScrollView$_xenhtml_isForegroundWidgetHoster(SBIconScrollView * __unused self, SEL __unused _cmd) { NSValue * value = objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$SBIconScrollView$_xenhtml_isForegroundWidgetHoster); BOOL rawValue; [value getValue:&rawValue]; return rawValue; }; __attribute__((used)) static void _logos_method$SpringBoard$SBIconScrollView$set_xenhtml_isForegroundWidgetHoster(SBIconScrollView * __unused self, SEL __unused _cmd, BOOL rawValue) { NSValue * value = [NSValue valueWithBytes:&rawValue objCType:@encode(BOOL)]; objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$SBIconScrollView$_xenhtml_isForegroundWidgetHoster, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$SpringBoard$SBIconScrollView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBIconScrollView$layoutSubviews ? _logos_orig$SpringBoard$SBIconScrollView$layoutSubviews : (__typeof__(_logos_orig$SpringBoard$SBIconScrollView$layoutSubviews))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconScrollView, @selector(layoutSubviews)))(self, _cmd);
    
    
    if (self._xenhtml_isForegroundWidgetHoster) {
        CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
        
        
        
        
        
        
        BOOL noTodayPage = NO;
        
        for (UIView *view in self.subviews) {
            
            if ([[view class] isEqual:objc_getClass("SBRootIconListView")]) {
                noTodayPage = view.frame.origin.x == 0;
                
                break;
            }
        }
        
        sbhtmlForegroundViewController.view.frame = CGRectMake(noTodayPage ? -SCREEN_WIDTH : 0, 0, self.contentSize.width, SCREEN_HEIGHT);
    }
}



static void _logos_method$SpringBoard$SBIconScrollView$_xenhtml_recievedSettingsUpdate(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([XENHResources SBEnabled] && sbhtmlForegroundViewController && self._xenhtml_isForegroundWidgetHoster) {
        if ([XENHResources SBPerPageHTMLWidgetMode]) {
            
            [self sendSubviewToBack:sbhtmlForegroundViewController.view];
        } else {
            
            [self bringSubviewToFront:sbhtmlForegroundViewController.view];
        }
    }
}

static void _logos_method$SpringBoard$SBIconScrollView$addSubview$(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBIconScrollView$addSubview$ ? _logos_orig$SpringBoard$SBIconScrollView$addSubview$ : (__typeof__(_logos_orig$SpringBoard$SBIconScrollView$addSubview$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconScrollView, @selector(addSubview:)))(self, _cmd, arg1);
    
    if (self._xenhtml_isForegroundWidgetHoster && sbhtmlForegroundViewController) {
        if ([XENHResources SBPerPageHTMLWidgetMode]) {
            
            [self sendSubviewToBack:sbhtmlForegroundViewController.view];
        } else {
            
            [self bringSubviewToFront:sbhtmlForegroundViewController.view];
        }
    }
}

static void _logos_method$SpringBoard$SBIconScrollView$insertSubview$atIndex$(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, int arg2) {
    (_logos_orig$SpringBoard$SBIconScrollView$insertSubview$atIndex$ ? _logos_orig$SpringBoard$SBIconScrollView$insertSubview$atIndex$ : (__typeof__(_logos_orig$SpringBoard$SBIconScrollView$insertSubview$atIndex$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconScrollView, @selector(insertSubview:atIndex:)))(self, _cmd, arg1, arg2);
    
    if (self._xenhtml_isForegroundWidgetHoster && sbhtmlForegroundViewController) {
        if ([XENHResources SBPerPageHTMLWidgetMode]) {
            
            [self sendSubviewToBack:sbhtmlForegroundViewController.view];
        } else {
            
            [self bringSubviewToFront:sbhtmlForegroundViewController.view];
        }
    }
}



#pragma mark Touch corrections for Per Page HTML mode (iOS 13+)



static UIView* _logos_method$SpringBoard$SBRootIconListView$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBRootIconListView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint point, UIEvent * event) {
    if ([XENHResources SBEnabled] && [XENHResources SBPerPageHTMLWidgetMode]) {
        BOOL isDraggingIcon = [[[objc_getClass("SBIconController") sharedInstance] iconDragManager] isTrackingUserActiveIconDrags];
        
        
        if (!self.clipsToBounds && !self.hidden && self.alpha > 0) {
            for (UIView *subview in self.subviews.reverseObjectEnumerator) {
                CGPoint subPoint = [subview convertPoint:point fromView:self];
                UIView *result = [subview hitTest:subPoint withEvent:event];
                if (result != nil) {
                    return result;
                }
            }
        }
        
        
        UIView *view = (_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootIconListView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
        if ([view isEqual:self] && !isDraggingIcon) {
            view = nil;
        }
        
        return view;
    } else {
        return (_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootIconListView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
}



#pragma mark Dock position for PerPageHTML mode (iOS 13+)



static void _logos_method$SpringBoard$SBRootFolderView$_updateDockViewZOrdering(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$SBRootFolderView$_updateDockViewZOrdering ? _logos_orig$SpringBoard$SBRootFolderView$_updateDockViewZOrdering : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$_updateDockViewZOrdering))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(_updateDockViewZOrdering)))(self, _cmd);
    
    
    [self _xenhtml_setDockPositionIfNeeded];
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_setDockPositionIfNeeded(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIView *dockView = [self dockView];
    UIView *dockParent = [dockView superview];
    
    if ([XENHResources SBEnabled] && sbhtmlForegroundViewController) {
        
        if ([XENHResources SBPerPageHTMLWidgetMode]) {
            
            [dockParent bringSubviewToFront:dockView];
            
            XENlog(@"*** Bringing dock to the front");
        } else {
            
            [dockParent sendSubviewToBack:dockView];
            
            XENlog(@"*** Sending dock to the back");
        }
    }
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_recievedSettingsUpdate(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [self _xenhtml_setDockPositionIfNeeded];
}



#pragma mark Display Homescreen foreground add button when editing (iOS 13+)

static BOOL _xenhtml_inEditingMode = NO;
static BOOL _xenhtml_isPreviewGeneration = NO;




static SBHomeScreenPreviewView* _logos_method$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$(_LOGOS_SELF_TYPE_INIT SBHomeScreenPreviewView* __unused self, SEL __unused _cmd, CGRect arg1, id arg2) _LOGOS_RETURN_RETAINED {
    _xenhtml_isPreviewGeneration = YES;
    
    id orig = (_logos_orig$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$ ? _logos_orig$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$ : (__typeof__(_logos_orig$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBHomeScreenPreviewView, @selector(initWithFrame:iconController:)))(self, _cmd, arg1, arg2);
    
    _xenhtml_isPreviewGeneration = NO;
    
    return orig;
}





__attribute__((used)) static XENHButton * _logos_method$SpringBoard$SBRootFolderView$_xenhtml_addButton(SBRootFolderView * __unused self, SEL __unused _cmd) { return (XENHButton *)objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_addButton); }; __attribute__((used)) static void _logos_method$SpringBoard$SBRootFolderView$set_xenhtml_addButton(SBRootFolderView * __unused self, SEL __unused _cmd, XENHButton * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_addButton, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static XENHTouchPassThroughView * _logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingPlatter(SBRootFolderView * __unused self, SEL __unused _cmd) { return (XENHTouchPassThroughView *)objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingPlatter); }; __attribute__((used)) static void _logos_method$SpringBoard$SBRootFolderView$set_xenhtml_editingPlatter(SBRootFolderView * __unused self, SEL __unused _cmd, XENHTouchPassThroughView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingPlatter, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIView * _logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingVerticalIndicator(SBRootFolderView * __unused self, SEL __unused _cmd) { return (UIView *)objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingVerticalIndicator); }; __attribute__((used)) static void _logos_method$SpringBoard$SBRootFolderView$set_xenhtml_editingVerticalIndicator(SBRootFolderView * __unused self, SEL __unused _cmd, UIView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingVerticalIndicator, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static SBRootFolderView* _logos_method$SpringBoard$SBRootFolderView$initWithConfiguration$(_LOGOS_SELF_TYPE_INIT SBRootFolderView* __unused self, SEL __unused _cmd, id configuration) _LOGOS_RETURN_RETAINED {
    if (_xenhtml_isPreviewGeneration) {
        return (_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$ ? _logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(initWithConfiguration:)))(self, _cmd, configuration);
    }
    
    SBRootFolderView *orig = (_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$ ? _logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(initWithConfiguration:)))(self, _cmd, configuration);
    
    if (orig) {
        [orig _xenhtml_initialise];
    }
    
    return orig;
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_initialise(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    self._xenhtml_addButton = [[XENHButton alloc] initWithTitle:[XENHResources localisedStringForKey:@"WIDGETS_ADD_NEW"]];
    [self._xenhtml_addButton addTarget:self
            action:@selector(_xenhtml_addWidgetButtonTapped:)
            forControlEvents:UIControlEventTouchUpInside];
    
    
    self._xenhtml_addButton.hidden = YES;
    
    [self addSubview:self._xenhtml_addButton];
    
    
    self._xenhtml_editingPlatter = [[XENHTouchPassThroughView alloc] initWithFrame:CGRectZero];
    self._xenhtml_editingPlatter.hidden = YES;
    
    [self addSubview:self._xenhtml_editingPlatter];
    
    self._xenhtml_editingVerticalIndicator = [[UIView alloc] initWithFrame:CGRectZero];
    self._xenhtml_editingVerticalIndicator.userInteractionEnabled = NO;
    self._xenhtml_editingVerticalIndicator.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    self._xenhtml_editingVerticalIndicator.hidden = YES;
    self._xenhtml_editingVerticalIndicator.alpha = 0.0;
    
    [self insertSubview:self._xenhtml_editingVerticalIndicator belowSubview:self._xenhtml_editingPlatter];
}

static void _logos_method$SpringBoard$SBRootFolderView$setEditing$animated$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1, _Bool arg2) {
    (_logos_orig$SpringBoard$SBRootFolderView$setEditing$animated$ ? _logos_orig$SpringBoard$SBRootFolderView$setEditing$animated$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$setEditing$animated$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(setEditing:animated:)))(self, _cmd, arg1, arg2);
    
    _xenhtml_inEditingMode = arg1;
    
    
    if (![XENHResources SBEnabled])
        return;

    [sbhtmlForegroundViewController updateEditingModeState:arg1];
    
    static CGFloat animationDuration = 0.15;
    
    
    if (arg1) {
        self._xenhtml_addButton.hidden = NO;
        self._xenhtml_editingPlatter.hidden = NO;
        
        if (![XENHResources hidePageControlDots] && ![XENHResources isPageBarAvailable]) {
            
            if (![self respondsToSelector:@selector(pageControl)]) {
#if TARGET_IPHONE_SIMULATOR==0
                [MSHookIvar<UIView*>(self, "_pageControl") setHidden:YES];
#endif
            } else {
                self.pageControl.hidden = YES;
            }
        } 
        
        self._xenhtml_addButton.alpha = 0.0;
        self._xenhtml_addButton.transform = CGAffineTransformMakeScale(0.1, 0.1);
        
        [UIView animateWithDuration:animationDuration animations:^{
            self._xenhtml_addButton.alpha = 1.0;
            self._xenhtml_addButton.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }];
    } else {
        
        if (![XENHResources hidePageControlDots] && ![XENHResources isPageBarAvailable]) {
            
            if (![self respondsToSelector:@selector(pageControl)]) {
#if TARGET_IPHONE_SIMULATOR==0
                [MSHookIvar<UIView*>(self, "_pageControl") setHidden:NO];
#endif
            } else {
                self.pageControl.hidden = NO;
            }
        }
        
        [UIView animateWithDuration:animationDuration animations:^{
            self._xenhtml_addButton.alpha = 0.0;
            self._xenhtml_addButton.transform = CGAffineTransformMakeScale(0.1, 0.1);
        } completion:^(BOOL finished) {
            if (finished && self) {
                self._xenhtml_addButton.hidden = YES;
                self._xenhtml_editingPlatter.hidden = YES;
            }
        }];
    }
}

static void _logos_method$SpringBoard$SBRootFolderView$scrollViewDidScroll$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBRootFolderView$scrollViewDidScroll$ ? _logos_orig$SpringBoard$SBRootFolderView$scrollViewDidScroll$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$scrollViewDidScroll$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(scrollViewDidScroll:)))(self, _cmd, arg1);
    
    
    [self _xenhtml_layoutAddWidgetButton];
}

static void _logos_method$SpringBoard$SBRootFolderView$addSubview$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBRootFolderView$addSubview$ ? _logos_orig$SpringBoard$SBRootFolderView$addSubview$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$addSubview$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(addSubview:)))(self, _cmd, arg1);
    
    
    [self bringSubviewToFront:self._xenhtml_addButton];
    [self bringSubviewToFront:self._xenhtml_editingPlatter];
    
    
    [self _xenhtml_setDockPositionIfNeeded];
}

static void _logos_method$SpringBoard$SBRootFolderView$insertSubview$atIndex$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, int arg2) {
    (_logos_orig$SpringBoard$SBRootFolderView$insertSubview$atIndex$ ? _logos_orig$SpringBoard$SBRootFolderView$insertSubview$atIndex$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$insertSubview$atIndex$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(insertSubview:atIndex:)))(self, _cmd, arg1, arg2);
    
    
    [self bringSubviewToFront:self._xenhtml_addButton];
    [self bringSubviewToFront:self._xenhtml_editingPlatter];
    
    
    [self _xenhtml_setDockPositionIfNeeded];
    
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_addWidgetButtonTapped$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    [sbhtmlForegroundViewController noteUserDidPressAddWidgetButton];
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_layoutAddWidgetButton(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    CGFloat lowestOffset = SCREEN_WIDTH;
    
    for (UIView *view in self.scrollView.subviews) {
        
        if ([[view class] isEqual:objc_getClass("SBRootIconListView")]) {
            lowestOffset = view.frame.origin.x;
            
            break;
        }
    }
    
    CGFloat effectiveXOffset = lowestOffset - self.scrollView.contentOffset.x;
    if (effectiveXOffset < 0) effectiveXOffset = 0;
        
    CGFloat scrollViewHeight = self.scrollView.frame.size.height;
    if ([XENHResources isHarbour2Available])
        scrollViewHeight -= 115.0; 
    
    self._xenhtml_addButton.center = CGPointMake(effectiveXOffset + SCREEN_WIDTH/2.0,
                                                 scrollViewHeight
                                                 + self.scrollView.frame.origin.y
                                                 - self._xenhtml_addButton.bounds.size.height/4.0);
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_layoutEditingPlatter(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    self._xenhtml_editingPlatter.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    self._xenhtml_editingVerticalIndicator.frame = CGRectMake(self.bounds.size.width/2 - 0.5, 0, 1, self.bounds.size.height);
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_showVerticalEditingGuide(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    self._xenhtml_editingVerticalIndicator.hidden = NO;
    
    [UIView animateWithDuration:0.3 animations:^{
        self._xenhtml_editingVerticalIndicator.alpha = 1.0;
    }];
}


static void _logos_method$SpringBoard$SBRootFolderView$_xenhtml_hideVerticalEditingGuide(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [UIView animateWithDuration:0.3 animations:^{
        self._xenhtml_editingVerticalIndicator.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished)
            self._xenhtml_editingVerticalIndicator.hidden = YES;
    }];
}



#pragma mark Ensure icons always can be tapped through the SBHTML foreground widgets view (iOS 13+)



static UIView* _logos_method$SpringBoard$SBIconScrollView$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint point, UIEvent * event) {
    if (![XENHResources SBEnabled] || !self._xenhtml_isForegroundWidgetHoster) {
        return (_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconScrollView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
    
    UIView *result = nil;
    for (UIView *view in [self.subviews reverseObjectEnumerator]) {
        CGPoint subPoint = [view convertPoint:point fromView:self];
        UIView *hittested = [view hitTest:subPoint withEvent:event];
        
        XENlog(@"DEBUG :: Inner loop checking: %@", hittested);
        
        if (hittested == nil)
            continue;
        
        
        if (_xenhtml_inEditingMode) {
            return hittested;
        }
        
        
        if ([XENHResources SBOnePageWidgetMode])
            return hittested;
        
        if ([[hittested class] isEqual:objc_getClass("SBIconView")] ||
            [[hittested class] isEqual:objc_getClass("SBFolderIconView")] ||
            [hittested isKindOfClass:objc_getClass("SBIconView")]) {
            
            return hittested;
        }
        
        
        if ([[hittested class] isEqual:objc_getClass("SBRootIconListView")]) {
            if (!result) {
                
                result = hittested;
            }
        } else {
            result = hittested;
        }
    }
    
    return result != nil ? result : (_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBIconScrollView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
}






static UIView* _logos_method$SpringBoard$SBDockView$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint point, UIEvent * event) {
    if (![XENHResources SBEnabled] || ![XENHResources SBPerPageHTMLWidgetMode]) {
        return (_logos_orig$SpringBoard$SBDockView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBDockView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBDockView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDockView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
    
    UIView *result = nil;
    for (UIView *view in [self.subviews reverseObjectEnumerator]) {
        CGPoint subPoint = [view convertPoint:point fromView:self];
        UIView *hittested = [view hitTest:subPoint withEvent:event];
        
        
        if (result == nil && hittested != nil)
            result = hittested;
    }
    
    
    return result;
}






static UIView* _logos_method$SpringBoard$SBRootFolderView$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint point, UIEvent * event) {
    
    if (![XENHResources SBEnabled] || [XENHResources SBPerPageHTMLWidgetMode]) {
        return (_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
    
    CGPoint dockSubPoint = [[self dockView] convertPoint:point fromView:self];
    UIView *dockResult = [[self dockView] hitTest:dockSubPoint withEvent:event];
    
    
    if (dockResult &&
        ![[dockResult class] isEqual:objc_getClass("SBRootFolderDockIconListView")] &&
        ![[dockResult class] isEqual:objc_getClass("SBDockIconListView")]) {
        return dockResult;
    } else {
        return (_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$ ? _logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$ : (__typeof__(_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBRootFolderView, @selector(hitTest:withEvent:)))(self, _cmd, point, event);
    }
}



#pragma mark Stop jumping up bug (iOS 13+)



static BOOL _logos_method$SpringBoard$WKWebView$_shouldUpdateKeyboardWithInfo$(_LOGOS_SELF_TYPE_NORMAL WKWebView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSDictionary * keyboardInfo) {
    return NO;
}



#pragma mark Stop white area bug (iOS 13+)

@interface _UIPlatterView : UIView
@end



static void _logos_method$SpringBoard$_UIPlatterView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL _UIPlatterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$SpringBoard$_UIPlatterView$didMoveToSuperview ? _logos_orig$SpringBoard$_UIPlatterView$didMoveToSuperview : (__typeof__(_logos_orig$SpringBoard$_UIPlatterView$didMoveToSuperview))class_getMethodImplementation(_logos_superclass$SpringBoard$_UIPlatterView, @selector(didMoveToSuperview)))(self, _cmd);
    
    if ([[self.superview.superview class] isEqual:objc_getClass("WKScrollView")] ||
        [[self.superview class] isEqual:objc_getClass("UIWebBrowserView")]) {
        [self removeFromSuperview];
    }
}



#pragma mark Stop magnification loupe bug (iOS 13+)



static void _logos_method$SpringBoard$UIWKTextLoupeInteraction$loupeGesture$(_LOGOS_SELF_TYPE_NORMAL UIWKTextLoupeInteraction* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return;
}



#pragma mark Properly handle media controls on lockscreen (iOS 9)

static void hideForegroundIfNeeded() {
    
    BOOL canHideForeground = foregroundHiddenRequesters.count > 0;
    
    if (canHideForeground && foregroundViewController && foregroundViewController.view.alpha != [XENHResources LSWidgetFadeOpacity]) {
        [UIView animateWithDuration:0.15 animations:^{
            foregroundViewController.view.alpha = [XENHResources LSWidgetFadeOpacity];
        } completion:^(BOOL finished) {
            
        }];
    }
}

static void showForegroundIfNeeded() {
    
    BOOL canShowForeground = foregroundHiddenRequesters.count == 0;
    
    if (canShowForeground && foregroundViewController && foregroundViewController.view.alpha != 1.0) {
        
        
        [UIView animateWithDuration:0.15 animations:^{
            foregroundViewController.view.alpha = 1.0;
        }];
    }
}

static void addForegroundHiddenRequester(NSString* requester) {
    
    if (!foregroundHiddenRequesters) {
        foregroundHiddenRequesters = [NSMutableArray array];
    }
    
    if (![foregroundHiddenRequesters containsObject:requester]) {
        [foregroundHiddenRequesters addObject:requester];
    }
    
    hideForegroundIfNeeded();
}

static void removeForegroundHiddenRequester(NSString* requester) {
    
    [foregroundHiddenRequesters removeObject:requester];
    
    showForegroundIfNeeded();
}



static void _logos_method$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL visible) {
    (_logos_orig$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$ ? _logos_orig$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenViewController, @selector(_setMediaControlsVisible:)))(self, _cmd, visible);
    
    if (foregroundViewController && [XENHResources LSFadeForegroundForMedia]) {
        
        
#if TARGET_IPHONE_SIMULATOR==0
        BOOL actuallyHasControls = YES;
        
        UIViewController *mpu = MSHookIvar<UIViewController*>(self, "_mediaControlsViewController");
        if (!mpu) {
            actuallyHasControls = NO;
        } else if (!mpu.view.superview) {
            actuallyHasControls = NO;
        } else if (mpu.view.alpha == 0.0) {
            actuallyHasControls = NO;
        }
        
        if (visible && actuallyHasControls) {
            addForegroundHiddenRequester(@"com.matchstic.xenhtml.mediacontrols");
        } else {
            removeForegroundHiddenRequester(@"com.matchstic.xenhtml.mediacontrols");
        }
#endif
    }
}



#pragma mark Hide widget for notifications if needed. (iOS 9)

static void hideForegroundForLSNotifIfNeeded() {
    if ([XENHResources LSFadeForegroundForNotifications] && ![XENHResources LSInStateNotificationsHidden]) {
        addForegroundHiddenRequester(@"com.matchstic.xenhtml.notifications");
    }
}

static void showForegroundForLSNotifIfNeeded() {
    if ([XENHResources LSFadeForegroundForNotifications] && [XENHResources LSInStateNotificationsHidden]) {
        removeForegroundHiddenRequester(@"com.matchstic.xenhtml.notifications");
    }
}



static SBLockScreenNotificationListController* _logos_method$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$(_LOGOS_SELF_TYPE_INIT SBLockScreenNotificationListController* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    id orig = (_logos_orig$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$ ? _logos_orig$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenNotificationListController, @selector(initWithNibName:bundle:)))(self, _cmd, arg1, arg2);
    
    if (orig) {
        [XENHResources cacheNotificationListController:orig];
    }
    
    return orig;
}

static void _logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$ ? _logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelAndViewForRemovalOfItem:)))(self, _cmd, arg1);
    
    showForegroundForLSNotifIfNeeded();
}

static void _logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2) {
    (_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$ ? _logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelForRemovalOfItem:updateView:)))(self, _cmd, arg1, arg2);
    
    showForegroundForLSNotifIfNeeded();
}

static void _logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$(_LOGOS_SELF_TYPE_NORMAL SBLockScreenNotificationListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$ ? _logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$ : (__typeof__(_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelAndViewForAdditionOfItem:)))(self, _cmd, arg1);
    
    hideForegroundForLSNotifIfNeeded();
}



#pragma mark Properly handle media controls and notification on lockscreen (iOS 11+)




static void _logos_method$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    (_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$ ? _logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardCombinedListViewController, @selector(_setListHasContent:)))(self, _cmd, arg1);
    
    BOOL shouldHide = [XENHResources LSFadeForegroundForNotifications];
    
    if (shouldHide) {
        if (arg1) {
            addForegroundHiddenRequester(@"com.matchstic.xenhtml.notifications");
        } else {
            removeForegroundHiddenRequester(@"com.matchstic.xenhtml.notifications");
        }
    }
}



#pragma mark Adjust notification view positioning as required (iOS 11)



static UIEdgeInsets _logos_method$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIEdgeInsets orig = (_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets ? _logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets : (__typeof__(_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardCombinedListViewController, @selector(_listViewDefaultContentInsets)))(self, _cmd);
    
    if ([XENHResources lsenabled] && [XENHResources LSFullscreenNotifications]) {
        orig.top = [[UIApplication sharedApplication] statusBarFrame].size.height;
    }
    
    return orig;
}

static void _logos_method$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
    (_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$ ? _logos_orig$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$ : (__typeof__(_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$))class_getMethodImplementation(_logos_superclass$SpringBoard$SBDashBoardCombinedListViewController, @selector(viewWillAppear:)))(self, _cmd, arg1);
    
    
    [self _updateListViewContentInset];
}



#pragma mark Used to forward touches to other views via a view tag. (iOS 9+)



static NSSet* _logos_method$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$(_LOGOS_SELF_TYPE_NORMAL UITouchesEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIGestureRecognizer* arg1) {
    if (arg1.view.tag == 1337 && ([[arg1.view class] isEqual:objc_getClass("WKContentView")] || [[arg1.view class] isEqual:objc_getClass("UIWebBrowserView")])) {
        return [self _allTouches];
    } else {
        return (_logos_orig$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$ ? _logos_orig$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$ : (__typeof__(_logos_orig$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$))class_getMethodImplementation(_logos_superclass$SpringBoard$UITouchesEvent, @selector(touchesForGestureRecognizer:)))(self, _cmd, arg1);
    }
}

static NSSet* _logos_method$SpringBoard$UITouchesEvent$touchesForView$(_LOGOS_SELF_TYPE_NORMAL UITouchesEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView* arg1) {
    if (arg1.tag == 1337 && ([[arg1 class] isKindOfClass:objc_getClass("UIScrollView")] || [[arg1 class] isEqual:objc_getClass("UIWebOverflowScrollView")])) {
        NSSet *set = [self _allTouches];
        
        for (UITouch *touch in set) {
            [touch set_xh_forwardingView:arg1];
        }
        
        return set;
    } else {
        return (_logos_orig$SpringBoard$UITouchesEvent$touchesForView$ ? _logos_orig$SpringBoard$UITouchesEvent$touchesForView$ : (__typeof__(_logos_orig$SpringBoard$UITouchesEvent$touchesForView$))class_getMethodImplementation(_logos_superclass$SpringBoard$UITouchesEvent, @selector(touchesForView:)))(self, _cmd, arg1);
    }
}





__attribute__((used)) static id _logos_method$SpringBoard$UITouch$_xh_forwardingView(UITouch * __unused self, SEL __unused _cmd) { NSValue * value = objc_getAssociatedObject(self, (void *)_logos_method$SpringBoard$UITouch$_xh_forwardingView); id rawValue; [value getValue:&rawValue]; return rawValue; }; __attribute__((used)) static void _logos_method$SpringBoard$UITouch$set_xh_forwardingView(UITouch * __unused self, SEL __unused _cmd, id rawValue) { NSValue * value = [NSValue valueWithBytes:&rawValue objCType:@encode(id)]; objc_setAssociatedObject(self, (void *)_logos_method$SpringBoard$UITouch$_xh_forwardingView, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static id _logos_method$SpringBoard$UITouch$view(_LOGOS_SELF_TYPE_NORMAL UITouch* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [self _xh_forwardingView] != nil ? [self _xh_forwardingView] : (_logos_orig$SpringBoard$UITouch$view ? _logos_orig$SpringBoard$UITouch$view : (__typeof__(_logos_orig$SpringBoard$UITouch$view))class_getMethodImplementation(_logos_superclass$SpringBoard$UITouch, @selector(view)))(self, _cmd);
}





#pragma mark Setup UI stuff


static Class _logos_superclass$Setup$SpringBoard; static void (*_logos_orig$Setup$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$Setup$SBLockScreenViewController; static BOOL (*_logos_orig$Setup$SBLockScreenViewController$suppressesSiri)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$Setup$SBBacklightController; static void (*_logos_orig$Setup$SBBacklightController$_lockScreenDimTimerFired)(_LOGOS_SELF_TYPE_NORMAL SBBacklightController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$Setup$SBHomeScreenWindow; static void (*_logos_orig$Setup$SBHomeScreenWindow$becomeKeyWindow)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenWindow* _LOGOS_SELF_CONST, SEL);




static void _logos_method$Setup$SpringBoard$_xenhtml_relaunchSpringBoardAfterSetup(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [XENHResources setPreferenceKey:@"hasDisplayedSetupUI" withValue:@YES andPost:YES];
    
    
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(_relaunchSpringBoardNow)]) {
        [(SpringBoard*)[UIApplication sharedApplication] _relaunchSpringBoardNow];
    } else if (objc_getClass("FBSystemService") && [[objc_getClass("FBSystemService") sharedInstance] respondsToSelector:@selector(exitAndRelaunch:)]) {
        [[objc_getClass("FBSystemService") sharedInstance] exitAndRelaunch:YES];
    }
}






static BOOL _logos_method$Setup$SBLockScreenViewController$suppressesSiri(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return ([XENHResources lsenabled] && setupWindow) ? YES : (_logos_orig$Setup$SBLockScreenViewController$suppressesSiri ? _logos_orig$Setup$SBLockScreenViewController$suppressesSiri : (__typeof__(_logos_orig$Setup$SBLockScreenViewController$suppressesSiri))class_getMethodImplementation(_logos_superclass$Setup$SBLockScreenViewController, @selector(suppressesSiri)))(self, _cmd);
}





static void _logos_method$Setup$SBBacklightController$_lockScreenDimTimerFired(_LOGOS_SELF_TYPE_NORMAL SBBacklightController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (setupWindow) {
        return;
    }
    
    (_logos_orig$Setup$SBBacklightController$_lockScreenDimTimerFired ? _logos_orig$Setup$SBBacklightController$_lockScreenDimTimerFired : (__typeof__(_logos_orig$Setup$SBBacklightController$_lockScreenDimTimerFired))class_getMethodImplementation(_logos_superclass$Setup$SBBacklightController, @selector(_lockScreenDimTimerFired)))(self, _cmd);
}



@interface SBLockScreenManager (Rehosting)
- (_Bool)unlockUIFromSource:(int)arg1 withOptions:(id)arg2;
@end

static BOOL launchCydiaForSource = NO;



static void _logos_method$Setup$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$Setup$SpringBoard$applicationDidFinishLaunching$ ? _logos_orig$Setup$SpringBoard$applicationDidFinishLaunching$ : (__typeof__(_logos_orig$Setup$SpringBoard$applicationDidFinishLaunching$))class_getMethodImplementation(_logos_superclass$Setup$SpringBoard, @selector(applicationDidFinishLaunching:)))(self, _cmd, arg1);
    
    










    if (refuseToLoadDueToRehosting) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Xen HTML"
                                                                       message:@"This tweak has not been installed from the official repository. For your safety, it will not function until installed officially.\n\nTap below to add the official repository to Cydia."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        
        UIAlertAction* repoAction = [UIAlertAction actionWithTitle:@"Add Repository" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
            launchCydiaForSource = YES;
            [[objc_getClass("SBLockScreenManager") sharedInstance] unlockUIFromSource:17 withOptions:nil];
        }];
        
        [alert addAction:repoAction];
        
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    } else {
        
        [XENHResources reloadSettings];
        
        
        if (![XENHResources hasDisplayedSetupUI]) {
            setupWindow = [XENHSetupWindow sharedInstance];
            
            setupWindow.hidden = NO;
            [setupWindow makeKeyAndVisible];
            setupWindow.frame = CGRectMake(0, 0, SCREEN_MIN_LENGTH, SCREEN_MAX_LENGTH);
            
            @try {
                SBLockScreenManager *man = [objc_getClass("SBLockScreenManager") sharedInstance];
                
                if ([man respondsToSelector:@selector(setBioUnlockingDisabled:forRequester:)]) {
                    [man setBioUnlockingDisabled:YES forRequester:@"com.matchstic.xenhtml.setup"];
                } else if ([man respondsToSelector:@selector(setBiometricAutoUnlockingDisabled:forReason:)]) {
                    [man setBiometricAutoUnlockingDisabled:YES forReason:@"com.matchstic.xenhtml.setup"];
                }
            } @catch (NSException *e) {
                
            }
        }
    }
}



@interface SBHomeScreenWindow : UIWindow
@end



static void _logos_method$Setup$SBHomeScreenWindow$becomeKeyWindow(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    (_logos_orig$Setup$SBHomeScreenWindow$becomeKeyWindow ? _logos_orig$Setup$SBHomeScreenWindow$becomeKeyWindow : (__typeof__(_logos_orig$Setup$SBHomeScreenWindow$becomeKeyWindow))class_getMethodImplementation(_logos_superclass$Setup$SBHomeScreenWindow, @selector(becomeKeyWindow)))(self, _cmd);
    
    
    if (launchCydiaForSource) {
        launchCydiaForSource = NO;
        
        NSURL *url = [NSURL URLWithString:@"cydia://url/https://cydia.saurik.com/api/share#?source=http://xenpublic.incendo.ws/"];
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }
    
    
    if ([XENHResources requiresHomescreenForegroundAlert]) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Xen HTML"
                                    message:@"You can now add widgets that move with your Homescreen icons.\n\nPress and hold an icon to enter editing mode, then tap 'Add widget' above the dock."
                                    preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        
        [self.rootViewController presentViewController:alert animated:YES completion:nil];
        
        
        [XENHResources setHomescreenForegroundAlertSeen:YES];
    }
}





static void XENHSettingsChanged(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
    
    NSDictionary *oldSBHTML = [XENHResources widgetPreferencesForLocation:kLocationSBBackground];
    BOOL oldSBHTMLEnabled = [XENHResources SBEnabled];
    BOOL oldDock = [XENHResources hideBlurredDockBG];
    BOOL oldFolder = [XENHResources hideBlurredFolderBG];
    BOOL oldIconLabels = [XENHResources SBHideIconLabels];
    BOOL oldSBTouch = [XENHResources SBAllowTouch];
    BOOL oldSBLegacy = [XENHResources SBUseLegacyMode];
    BOOL oldSBPageDots = [XENHResources SBHidePageDots];
    BOOL oldSBPerPageHTML = [XENHResources SBPerPageHTMLWidgetMode];
    
    [XENHResources reloadSettings];
    
    
    if (foregroundViewController) {
        [foregroundViewController noteUserPreferencesDidChange];
    }
    
    if (backgroundViewController) {
        [backgroundViewController noteUserPreferencesDidChange];
    }
    
    
    
    NSDictionary *newSBHTML = [XENHResources widgetPreferencesForLocation:kLocationSBBackground];
    BOOL newSBHTMLEnabled = [XENHResources SBEnabled];
    BOOL newDock = [XENHResources hideBlurredDockBG];
    BOOL newFolder = [XENHResources hideBlurredFolderBG];
    BOOL newIconLabels = [XENHResources SBHideIconLabels];
    BOOL newSBTouch = [XENHResources SBAllowTouch];
    BOOL newSBLegacy = [XENHResources SBUseLegacyMode];
    BOOL newSBPageDots = [XENHResources SBHidePageDots];
    BOOL newSBPerPageHTML = [XENHResources SBPerPageHTMLWidgetMode];
    
    if (![oldSBHTML isEqual:newSBHTML] ||
        newSBHTMLEnabled != oldSBHTMLEnabled ||
        newSBLegacy != oldSBLegacy) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlUpdate" object:nil];
    }
    
    if (oldDock != newDock) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlDockUpdate" object:nil];
    }
    
    if (oldFolder != newFolder) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlFolderUpdate" object:nil];
    }
    
    if (oldIconLabels != newIconLabels) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlIconLabelsUpdate" object:nil];
    }
    
    if (oldSBTouch != newSBTouch) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlUpdateGesture" object:nil];
    }
    
    if (oldSBPageDots != newSBPageDots) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlPageDotsUpdate" object:nil];
    }
    
    if (oldSBPerPageHTML != newSBPerPageHTML) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlPerPageUpdate" object:nil];
    }
}

static void XENHDidModifyConfig(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"com.matchstic.xenhtml/sbhtmlUpdate" object:nil];
}

static void XENHDidRequestRespring (CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(_relaunchSpringBoardNow)]) {
        [(SpringBoard*)[UIApplication sharedApplication] _relaunchSpringBoardNow];
    } else if (objc_getClass("FBSystemService") && [[objc_getClass("FBSystemService") sharedInstance] respondsToSelector:@selector(exitAndRelaunch:)]) {
        [[objc_getClass("FBSystemService") sharedInstance] exitAndRelaunch:YES];
    }
}

#pragma mark Constructor

static __attribute__((constructor)) void _logosLocalCtor_f7d8f452(int __unused argc, char __unused **argv, char __unused **envp) {
    XENlog(@"******* Injecting Xen HTML");
    
    {}
    
    BOOL sb = [[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"com.apple.springboard"];
    
    if (sb) {
        
        {Class _logos_class$Setup$SpringBoard = objc_getClass("SpringBoard"); _logos_superclass$Setup$SpringBoard = class_getSuperclass(_logos_class$Setup$SpringBoard); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Setup$SpringBoard, @selector(_xenhtml_relaunchSpringBoardAfterSetup), (IMP)&_logos_method$Setup$SpringBoard$_xenhtml_relaunchSpringBoardAfterSetup, _typeEncoding); }{ _logos_register_hook$(_logos_class$Setup$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$Setup$SpringBoard$applicationDidFinishLaunching$, (IMP *)&_logos_orig$Setup$SpringBoard$applicationDidFinishLaunching$);}Class _logos_class$Setup$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); _logos_superclass$Setup$SBLockScreenViewController = class_getSuperclass(_logos_class$Setup$SBLockScreenViewController); { _logos_register_hook$(_logos_class$Setup$SBLockScreenViewController, @selector(suppressesSiri), (IMP)&_logos_method$Setup$SBLockScreenViewController$suppressesSiri, (IMP *)&_logos_orig$Setup$SBLockScreenViewController$suppressesSiri);}Class _logos_class$Setup$SBBacklightController = objc_getClass("SBBacklightController"); _logos_superclass$Setup$SBBacklightController = class_getSuperclass(_logos_class$Setup$SBBacklightController); { _logos_register_hook$(_logos_class$Setup$SBBacklightController, @selector(_lockScreenDimTimerFired), (IMP)&_logos_method$Setup$SBBacklightController$_lockScreenDimTimerFired, (IMP *)&_logos_orig$Setup$SBBacklightController$_lockScreenDimTimerFired);}Class _logos_class$Setup$SBHomeScreenWindow = objc_getClass("SBHomeScreenWindow"); _logos_superclass$Setup$SBHomeScreenWindow = class_getSuperclass(_logos_class$Setup$SBHomeScreenWindow); { _logos_register_hook$(_logos_class$Setup$SBHomeScreenWindow, @selector(becomeKeyWindow), (IMP)&_logos_method$Setup$SBHomeScreenWindow$becomeKeyWindow, (IMP *)&_logos_orig$Setup$SBHomeScreenWindow$becomeKeyWindow);}}
        
        
        refuseToLoadDueToRehosting = ![XENHResources isInstalledFromOfficialRepository];
        
        if (refuseToLoadDueToRehosting) {
            XENlog(@"*** Not loading hooks due to not being installed from the official repo");
            return;
        }
        
        if (objc_getClass("SBDashBoardViewControllerBase")) {
            Class $XENDashBoardWebViewController = objc_allocateClassPair(objc_getClass("SBDashBoardViewControllerBase"), "XENDashBoardWebViewController", 0);
            objc_registerClassPair($XENDashBoardWebViewController);
        }
        
        {Class _logos_class$SpringBoard$SpringBoard = objc_getClass("SpringBoard"); _logos_superclass$SpringBoard$SpringBoard = class_getSuperclass(_logos_class$SpringBoard$SpringBoard); { _logos_register_hook$(_logos_class$SpringBoard$SpringBoard, @selector(didReceiveMemoryWarning), (IMP)&_logos_method$SpringBoard$SpringBoard$didReceiveMemoryWarning, (IMP *)&_logos_orig$SpringBoard$SpringBoard$didReceiveMemoryWarning);}Class _logos_class$SpringBoard$SBDashBoardView = objc_getClass("SBDashBoardView"); _logos_superclass$SpringBoard$SBDashBoardView = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardView); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBDashBoardView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBDashBoardView$layoutSubviews);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardView, @selector(viewControllerWillAppear), (IMP)&_logos_method$SpringBoard$SBDashBoardView$viewControllerWillAppear, (IMP *)&_logos_orig$SpringBoard$SBDashBoardView$viewControllerWillAppear);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardView, @selector(setWallpaperEffectView:), (IMP)&_logos_method$SpringBoard$SBDashBoardView$setWallpaperEffectView$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardView$setWallpaperEffectView$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardView, @selector(viewControllerDidDisappear), (IMP)&_logos_method$SpringBoard$SBDashBoardView$viewControllerDidDisappear, (IMP *)&_logos_orig$SpringBoard$SBDashBoardView$viewControllerDidDisappear);}Class _logos_class$SpringBoard$SBDashBoardMainPageView = objc_getClass("SBDashBoardMainPageView"); _logos_superclass$SpringBoard$SBDashBoardMainPageView = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardMainPageView); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardMainPageView, @selector(hitTest:withEvent:), (IMP)&_logos_method$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardMainPageView$hitTest$withEvent$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardMainPageView, @selector(_layoutSlideUpAppGrabberView), (IMP)&_logos_method$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView, (IMP *)&_logos_orig$SpringBoard$SBDashBoardMainPageView$_layoutSlideUpAppGrabberView);}Class _logos_class$SpringBoard$XENDashBoardWebViewController = objc_getClass("XENDashBoardWebViewController"); _logos_superclass$SpringBoard$XENDashBoardWebViewController = class_getSuperclass(_logos_class$SpringBoard$XENDashBoardWebViewController); { _logos_register_hook$(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(presentationTransition), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$presentationTransition, (IMP *)&_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationTransition);}{ _logos_register_hook$(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(presentationPriority), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$presentationPriority, (IMP *)&_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationPriority);}{ _logos_register_hook$(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(presentationType), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$presentationType, (IMP *)&_logos_orig$SpringBoard$XENDashBoardWebViewController$presentationType);}{ _logos_register_hook$(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(scrollingStrategy), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$scrollingStrategy, (IMP *)&_logos_orig$SpringBoard$XENDashBoardWebViewController$scrollingStrategy);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIView*), strlen(@encode(UIView*))); i += strlen(@encode(UIView*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(setWebView:), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$setWebView$, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$XENDashBoardWebViewController, @selector(viewDidLayoutSubviews), (IMP)&_logos_method$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews, (IMP *)&_logos_orig$SpringBoard$XENDashBoardWebViewController$viewDidLayoutSubviews);}Class _logos_class$SpringBoard$SBDashBoardMainPageContentViewController = objc_getClass("SBDashBoardMainPageContentViewController"); _logos_superclass$SpringBoard$SBDashBoardMainPageContentViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardMainPageContentViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardMainPageContentViewController, @selector(init), (IMP)&_logos_method$SpringBoard$SBDashBoardMainPageContentViewController$init, (IMP *)&_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$init);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardMainPageContentViewController, @selector(aggregateAppearance:), (IMP)&_logos_method$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardMainPageContentViewController$aggregateAppearance$);}Class _logos_class$SpringBoard$SBDashBoardMainPageViewController = objc_getClass("SBDashBoardMainPageViewController"); _logos_superclass$SpringBoard$SBDashBoardMainPageViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardMainPageViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardMainPageViewController, @selector(init), (IMP)&_logos_method$SpringBoard$SBDashBoardMainPageViewController$init, (IMP *)&_logos_orig$SpringBoard$SBDashBoardMainPageViewController$init);}Class _logos_class$SpringBoard$SBDashBoardQuickActionsViewController = objc_getClass("SBDashBoardQuickActionsViewController"); _logos_superclass$SpringBoard$SBDashBoardQuickActionsViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardQuickActionsViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardQuickActionsViewController, @selector(hasCamera), (IMP)&_logos_method$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera, (IMP *)&_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasCamera);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardQuickActionsViewController, @selector(hasFlashlight), (IMP)&_logos_method$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight, (IMP *)&_logos_orig$SpringBoard$SBDashBoardQuickActionsViewController$hasFlashlight);}Class _logos_class$SpringBoard$SBDashBoardViewController = objc_getClass("SBDashBoardViewController"); _logos_superclass$SpringBoard$SBDashBoardViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardViewController, @selector(viewWillTransitionToSize:withTransitionCoordinator:), (IMP)&_logos_method$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardViewController$viewWillTransitionToSize$withTransitionCoordinator$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardViewController, @selector(statusBarStyle), (IMP)&_logos_method$SpringBoard$SBDashBoardViewController$statusBarStyle, (IMP *)&_logos_orig$SpringBoard$SBDashBoardViewController$statusBarStyle);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardViewController, @selector(wantsTimeInStatusBar), (IMP)&_logos_method$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar, (IMP *)&_logos_orig$SpringBoard$SBDashBoardViewController$wantsTimeInStatusBar);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardViewController, @selector(shouldShowLockStatusBarTime), (IMP)&_logos_method$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime, (IMP *)&_logos_orig$SpringBoard$SBDashBoardViewController$shouldShowLockStatusBarTime);}Class _logos_class$SpringBoard$SBHorizontalScrollFailureRecognizer = objc_getClass("SBHorizontalScrollFailureRecognizer"); _logos_superclass$SpringBoard$SBHorizontalScrollFailureRecognizer = class_getSuperclass(_logos_class$SpringBoard$SBHorizontalScrollFailureRecognizer); { _logos_register_hook$(_logos_class$SpringBoard$SBHorizontalScrollFailureRecognizer, @selector(_isOutOfBounds:forAngle:), (IMP)&_logos_method$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$, (IMP *)&_logos_orig$SpringBoard$SBHorizontalScrollFailureRecognizer$_isOutOfBounds$forAngle$);}Class _logos_class$SpringBoard$SBPagedScrollView = objc_getClass("SBPagedScrollView"); _logos_superclass$SpringBoard$SBPagedScrollView = class_getSuperclass(_logos_class$SpringBoard$SBPagedScrollView); { _logos_register_hook$(_logos_class$SpringBoard$SBPagedScrollView, @selector(touchesShouldCancelInContentView:), (IMP)&_logos_method$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$, (IMP *)&_logos_orig$SpringBoard$SBPagedScrollView$touchesShouldCancelInContentView$);}Class _logos_class$SpringBoard$SBFLockScreenDateView = objc_getClass("SBFLockScreenDateView"); _logos_superclass$SpringBoard$SBFLockScreenDateView = class_getSuperclass(_logos_class$SpringBoard$SBFLockScreenDateView); { _logos_register_hook$(_logos_class$SpringBoard$SBFLockScreenDateView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBFLockScreenDateView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBFLockScreenDateView$layoutSubviews);}{ _logos_register_hook$(_logos_class$SpringBoard$SBFLockScreenDateView, @selector(setHidden:), (IMP)&_logos_method$SpringBoard$SBFLockScreenDateView$setHidden$, (IMP *)&_logos_orig$SpringBoard$SBFLockScreenDateView$setHidden$);}Class _logos_class$SpringBoard$SBDashBoardPageViewController = objc_getClass("SBDashBoardPageViewController"); _logos_superclass$SpringBoard$SBDashBoardPageViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardPageViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardPageViewController, @selector(aggregateAppearance:), (IMP)&_logos_method$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardPageViewController$aggregateAppearance$);}Class _logos_class$SpringBoard$SBMainStatusBarStateProvider = objc_getClass("SBMainStatusBarStateProvider"); _logos_superclass$SpringBoard$SBMainStatusBarStateProvider = class_getSuperclass(_logos_class$SpringBoard$SBMainStatusBarStateProvider); { _logos_register_hook$(_logos_class$SpringBoard$SBMainStatusBarStateProvider, @selector(setTimeCloaked:), (IMP)&_logos_method$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$, (IMP *)&_logos_orig$SpringBoard$SBMainStatusBarStateProvider$setTimeCloaked$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:crossfade:crossfadeDuration:), (IMP)&_logos_method$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$, (IMP *)&_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$crossfade$crossfadeDuration$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBMainStatusBarStateProvider, @selector(enableTime:), (IMP)&_logos_method$SpringBoard$SBMainStatusBarStateProvider$enableTime$, (IMP *)&_logos_orig$SpringBoard$SBMainStatusBarStateProvider$enableTime$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBMainStatusBarStateProvider, @selector(isTimeEnabled), (IMP)&_logos_method$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled, (IMP *)&_logos_orig$SpringBoard$SBMainStatusBarStateProvider$isTimeEnabled);}Class _logos_class$SpringBoard$SBCoverSheetWindow = objc_getClass("SBCoverSheetWindow"); _logos_superclass$SpringBoard$SBCoverSheetWindow = class_getSuperclass(_logos_class$SpringBoard$SBCoverSheetWindow); { _logos_register_hook$(_logos_class$SpringBoard$SBCoverSheetWindow, @selector(sendEvent:), (IMP)&_logos_method$SpringBoard$SBCoverSheetWindow$sendEvent$, (IMP *)&_logos_orig$SpringBoard$SBCoverSheetWindow$sendEvent$);}Class _logos_class$SpringBoard$SBUICallToActionLabel = objc_getClass("SBUICallToActionLabel"); _logos_superclass$SpringBoard$SBUICallToActionLabel = class_getSuperclass(_logos_class$SpringBoard$SBUICallToActionLabel); { _logos_register_hook$(_logos_class$SpringBoard$SBUICallToActionLabel, @selector(setText:forLanguage:animated:), (IMP)&_logos_method$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$, (IMP *)&_logos_orig$SpringBoard$SBUICallToActionLabel$setText$forLanguage$animated$);}Class _logos_class$SpringBoard$SBDashBoardTeachableMomentsContainerView = objc_getClass("SBDashBoardTeachableMomentsContainerView"); _logos_superclass$SpringBoard$SBDashBoardTeachableMomentsContainerView = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardTeachableMomentsContainerView); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardTeachableMomentsContainerView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBDashBoardTeachableMomentsContainerView$layoutSubviews);}Class _logos_class$SpringBoard$SBUIProudLockIconView = objc_getClass("SBUIProudLockIconView"); _logos_superclass$SpringBoard$SBUIProudLockIconView = class_getSuperclass(_logos_class$SpringBoard$SBUIProudLockIconView); { _logos_register_hook$(_logos_class$SpringBoard$SBUIProudLockIconView, @selector(setState:animated:options:completion:), (IMP)&_logos_method$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$, (IMP *)&_logos_orig$SpringBoard$SBUIProudLockIconView$setState$animated$options$completion$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBUIProudLockIconView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBUIProudLockIconView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBUIProudLockIconView$layoutSubviews);}Class _logos_class$SpringBoard$SBDashBoardFixedFooterView = objc_getClass("SBDashBoardFixedFooterView"); _logos_superclass$SpringBoard$SBDashBoardFixedFooterView = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardFixedFooterView); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardFixedFooterView, @selector(_layoutPageControl), (IMP)&_logos_method$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl, (IMP *)&_logos_orig$SpringBoard$SBDashBoardFixedFooterView$_layoutPageControl);}Class _logos_class$SpringBoard$SBIdleTimerDefaults = objc_getClass("SBIdleTimerDefaults"); _logos_superclass$SpringBoard$SBIdleTimerDefaults = class_getSuperclass(_logos_class$SpringBoard$SBIdleTimerDefaults); { _logos_register_hook$(_logos_class$SpringBoard$SBIdleTimerDefaults, @selector(_bindAndRegisterDefaults), (IMP)&_logos_method$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults, (IMP *)&_logos_orig$SpringBoard$SBIdleTimerDefaults$_bindAndRegisterDefaults);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGFloat), strlen(@encode(CGFloat))); i += strlen(@encode(CGFloat)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBIdleTimerDefaults, @selector(_xenhtml_minimumLockscreenIdleTime), (IMP)&_logos_method$SpringBoard$SBIdleTimerDefaults$_xenhtml_minimumLockscreenIdleTime, _typeEncoding); }Class _logos_class$SpringBoard$SBLockScreenManager = objc_getClass("SBLockScreenManager"); _logos_superclass$SpringBoard$SBLockScreenManager = class_getSuperclass(_logos_class$SpringBoard$SBLockScreenManager); { _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenManager, @selector(_setUILocked:), (IMP)&_logos_method$SpringBoard$SBLockScreenManager$_setUILocked$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenManager$_setUILocked$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenManager, @selector(_handleBacklightLevelWillChange:), (IMP)&_logos_method$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenManager$_handleBacklightLevelWillChange$);}Class _logos_class$SpringBoard$SBMainWorkspace = objc_getClass("SBMainWorkspace"); _logos_superclass$SpringBoard$SBMainWorkspace = class_getSuperclass(_logos_class$SpringBoard$SBMainWorkspace); { _logos_register_hook$(_logos_class$SpringBoard$SBMainWorkspace, @selector(applicationProcessDidExit:withContext:), (IMP)&_logos_method$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$, (IMP *)&_logos_orig$SpringBoard$SBMainWorkspace$applicationProcessDidExit$withContext$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBMainWorkspace, @selector(process:stateDidChangeFromState:toState:), (IMP)&_logos_method$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$, (IMP *)&_logos_orig$SpringBoard$SBMainWorkspace$process$stateDidChangeFromState$toState$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBMainWorkspace, @selector(_preflightTransitionRequest:), (IMP)&_logos_method$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$, (IMP *)&_logos_orig$SpringBoard$SBMainWorkspace$_preflightTransitionRequest$);}Class _logos_class$SpringBoard$SBApplication = objc_getClass("SBApplication"); _logos_superclass$SpringBoard$SBApplication = class_getSuperclass(_logos_class$SpringBoard$SBApplication); { _logos_register_hook$(_logos_class$SpringBoard$SBApplication, @selector(willAnimateDeactivation:), (IMP)&_logos_method$SpringBoard$SBApplication$willAnimateDeactivation$, (IMP *)&_logos_orig$SpringBoard$SBApplication$willAnimateDeactivation$);}Class _logos_class$SpringBoard$SBMainSwitcherViewController = objc_getClass("SBMainSwitcherViewController"); _logos_superclass$SpringBoard$SBMainSwitcherViewController = class_getSuperclass(_logos_class$SpringBoard$SBMainSwitcherViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBMainSwitcherViewController, @selector(performPresentationAnimationForTransitionRequest:withCompletion:), (IMP)&_logos_method$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$, (IMP *)&_logos_orig$SpringBoard$SBMainSwitcherViewController$performPresentationAnimationForTransitionRequest$withCompletion$);}Class _logos_class$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction = objc_getClass("SBFluidSwitcherGestureWorkspaceTransaction"); _logos_superclass$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction = class_getSuperclass(_logos_class$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction); { _logos_register_hook$(_logos_class$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction, @selector(_beginWithGesture:), (IMP)&_logos_method$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$, (IMP *)&_logos_orig$SpringBoard$SBFluidSwitcherGestureWorkspaceTransaction$_beginWithGesture$);}Class _logos_class$SpringBoard$SBScreenWakeAnimationController = objc_getClass("SBScreenWakeAnimationController"); _logos_superclass$SpringBoard$SBScreenWakeAnimationController = class_getSuperclass(_logos_class$SpringBoard$SBScreenWakeAnimationController); { _logos_register_hook$(_logos_class$SpringBoard$SBScreenWakeAnimationController, @selector(_handleAnimationCompletionIfNecessaryForWaking:), (IMP)&_logos_method$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$, (IMP *)&_logos_orig$SpringBoard$SBScreenWakeAnimationController$_handleAnimationCompletionIfNecessaryForWaking$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBScreenWakeAnimationController, @selector(_startWakeAnimationsForWaking:animationSettings:), (IMP)&_logos_method$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$, (IMP *)&_logos_orig$SpringBoard$SBScreenWakeAnimationController$_startWakeAnimationsForWaking$animationSettings$);}Class _logos_class$SpringBoard$SBHomeScreenViewController = objc_getClass("SBHomeScreenViewController"); _logos_superclass$SpringBoard$SBHomeScreenViewController = class_getSuperclass(_logos_class$SpringBoard$SBHomeScreenViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(loadView), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$loadView, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenViewController$loadView);}{ _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(_animateTransitionToSize:andInterfaceOrientation:withTransitionContext:), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenViewController$_animateTransitionToSize$andInterfaceOrientation$withTransitionContext$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(_xenhtml_addTouchRecogniser), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$_xenhtml_addTouchRecogniser, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(recievedSBHTMLUpdateForGesture:), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$recievedSBHTMLUpdateForGesture$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$recievedSBHTMLUpdate$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(shouldIgnoreWebTouch), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$shouldIgnoreWebTouch, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSSet *), strlen(@encode(NSSet *))); i += strlen(@encode(NSSet *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBHomeScreenViewController, @selector(isAnyTouchOverActiveArea:), (IMP)&_logos_method$SpringBoard$SBHomeScreenViewController$isAnyTouchOverActiveArea$, _typeEncoding); }Class _logos_class$SpringBoard$SBHomeScreenView = objc_getClass("SBHomeScreenView"); _logos_superclass$SpringBoard$SBHomeScreenView = class_getSuperclass(_logos_class$SpringBoard$SBHomeScreenView); { _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBHomeScreenView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenView$layoutSubviews);}{ _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenView, @selector(insertSubview:atIndex:), (IMP)&_logos_method$SpringBoard$SBHomeScreenView$insertSubview$atIndex$, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenView$insertSubview$atIndex$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenView, @selector(setHidden:), (IMP)&_logos_method$SpringBoard$SBHomeScreenView$setHidden$, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenView$setHidden$);}Class _logos_class$SpringBoard$SBDockView = objc_getClass("SBDockView"); _logos_superclass$SpringBoard$SBDockView = class_getSuperclass(_logos_class$SpringBoard$SBDockView); { _logos_register_hook$(_logos_class$SpringBoard$SBDockView, @selector(initWithDockListView:forSnapshot:), (IMP)&_logos_method$SpringBoard$SBDockView$initWithDockListView$forSnapshot$, (IMP *)&_logos_orig$SpringBoard$SBDockView$initWithDockListView$forSnapshot$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDockView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBDockView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBDockView$layoutSubviews);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDockView, @selector(_backgroundContrastDidChange:), (IMP)&_logos_method$SpringBoard$SBDockView$_backgroundContrastDidChange$, (IMP *)&_logos_orig$SpringBoard$SBDockView$_backgroundContrastDidChange$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBDockView, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBDockView$recievedSBHTMLUpdate$, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBDockView, @selector(hitTest:withEvent:), (IMP)&_logos_method$SpringBoard$SBDockView$hitTest$withEvent$, (IMP *)&_logos_orig$SpringBoard$SBDockView$hitTest$withEvent$);}Class _logos_class$SpringBoard$SBFloatingDockPlatterView = objc_getClass("SBFloatingDockPlatterView"); _logos_superclass$SpringBoard$SBFloatingDockPlatterView = class_getSuperclass(_logos_class$SpringBoard$SBFloatingDockPlatterView); { _logos_register_hook$(_logos_class$SpringBoard$SBFloatingDockPlatterView, @selector(initWithReferenceHeight:maximumContinuousCornerRadius:), (IMP)&_logos_method$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$, (IMP *)&_logos_orig$SpringBoard$SBFloatingDockPlatterView$initWithReferenceHeight$maximumContinuousCornerRadius$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBFloatingDockPlatterView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBFloatingDockPlatterView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBFloatingDockPlatterView$layoutSubviews);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBFloatingDockPlatterView, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBFloatingDockPlatterView$recievedSBHTMLUpdate$, _typeEncoding); }Class _logos_class$SpringBoard$SBFolderIconBackgroundView = objc_getClass("SBFolderIconBackgroundView"); _logos_superclass$SpringBoard$SBFolderIconBackgroundView = class_getSuperclass(_logos_class$SpringBoard$SBFolderIconBackgroundView); { _logos_register_hook$(_logos_class$SpringBoard$SBFolderIconBackgroundView, @selector(initWithDefaultSize), (IMP)&_logos_method$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize, (IMP *)&_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithDefaultSize);}{ _logos_register_hook$(_logos_class$SpringBoard$SBFolderIconBackgroundView, @selector(initWithFrame:), (IMP)&_logos_method$SpringBoard$SBFolderIconBackgroundView$initWithFrame$, (IMP *)&_logos_orig$SpringBoard$SBFolderIconBackgroundView$initWithFrame$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBFolderIconBackgroundView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBFolderIconBackgroundView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBFolderIconBackgroundView$layoutSubviews);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBFolderIconBackgroundView, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBFolderIconBackgroundView$recievedSBHTMLUpdate$, _typeEncoding); }Class _logos_class$SpringBoard$SBIconView = objc_getClass("SBIconView"); _logos_superclass$SpringBoard$SBIconView = class_getSuperclass(_logos_class$SpringBoard$SBIconView); { _logos_register_hook$(_logos_class$SpringBoard$SBIconView, @selector(initWithContentType:), (IMP)&_logos_method$SpringBoard$SBIconView$initWithContentType$, (IMP *)&_logos_orig$SpringBoard$SBIconView$initWithContentType$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBIconView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBIconView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBIconView$layoutSubviews);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBIconView, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBIconView$recievedSBHTMLUpdate$, _typeEncoding); }Class _logos_class$SpringBoard$SBIconListPageControl = objc_getClass("SBIconListPageControl"); _logos_superclass$SpringBoard$SBIconListPageControl = class_getSuperclass(_logos_class$SpringBoard$SBIconListPageControl); { _logos_register_hook$(_logos_class$SpringBoard$SBIconListPageControl, @selector(setHidden:), (IMP)&_logos_method$SpringBoard$SBIconListPageControl$setHidden$, (IMP *)&_logos_orig$SpringBoard$SBIconListPageControl$setHidden$);}{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(BOOL)); class_addMethod(_logos_class$SpringBoard$SBIconListPageControl, @selector(_xenhtml_hidden), (IMP)&_logos_method$SpringBoard$SBIconListPageControl$_xenhtml_hidden, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(BOOL)); class_addMethod(_logos_class$SpringBoard$SBIconListPageControl, @selector(set_xenhtml_hidden:), (IMP)&_logos_method$SpringBoard$SBIconListPageControl$set_xenhtml_hidden, _typeEncoding); } Class _logos_class$SpringBoard$SBRootFolderView = objc_getClass("SBRootFolderView"); _logos_superclass$SpringBoard$SBRootFolderView = class_getSuperclass(_logos_class$SpringBoard$SBRootFolderView); { _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBRootFolderView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$layoutSubviews);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$recievedSBHTMLUpdate$, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(_updateDockViewZOrdering), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_updateDockViewZOrdering, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$_updateDockViewZOrdering);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_setDockPositionIfNeeded), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_setDockPositionIfNeeded, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_recievedSettingsUpdate), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_recievedSettingsUpdate, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(initWithConfiguration:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$initWithConfiguration$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$initWithConfiguration$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_initialise), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_initialise, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(setEditing:animated:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$setEditing$animated$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$setEditing$animated$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(scrollViewDidScroll:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$scrollViewDidScroll$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$scrollViewDidScroll$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(addSubview:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$addSubview$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$addSubview$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(insertSubview:atIndex:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$insertSubview$atIndex$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$insertSubview$atIndex$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_addWidgetButtonTapped:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_addWidgetButtonTapped$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_layoutAddWidgetButton), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_layoutAddWidgetButton, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_layoutEditingPlatter), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_layoutEditingPlatter, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_showVerticalEditingGuide), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_showVerticalEditingGuide, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_hideVerticalEditingGuide), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_hideVerticalEditingGuide, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderView, @selector(hitTest:withEvent:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$hitTest$withEvent$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderView$hitTest$withEvent$);}{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(XENHButton *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_addButton), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_addButton, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(XENHButton *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(set_xenhtml_addButton:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$set_xenhtml_addButton, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(XENHTouchPassThroughView *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_editingPlatter), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingPlatter, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(XENHTouchPassThroughView *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(set_xenhtml_editingPlatter:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$set_xenhtml_editingPlatter, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIView *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(_xenhtml_editingVerticalIndicator), (IMP)&_logos_method$SpringBoard$SBRootFolderView$_xenhtml_editingVerticalIndicator, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIView *)); class_addMethod(_logos_class$SpringBoard$SBRootFolderView, @selector(set_xenhtml_editingVerticalIndicator:), (IMP)&_logos_method$SpringBoard$SBRootFolderView$set_xenhtml_editingVerticalIndicator, _typeEncoding); } Class _logos_class$SpringBoard$SBRootFolderController = objc_getClass("SBRootFolderController"); _logos_superclass$SpringBoard$SBRootFolderController = class_getSuperclass(_logos_class$SpringBoard$SBRootFolderController); { _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderController, @selector(initWithFolder:orientation:viewMap:context:), (IMP)&_logos_method$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$, (IMP *)&_logos_orig$SpringBoard$SBRootFolderController$initWithFolder$orientation$viewMap$context$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBRootFolderController, @selector(loadView), (IMP)&_logos_method$SpringBoard$SBRootFolderController$loadView, (IMP *)&_logos_orig$SpringBoard$SBRootFolderController$loadView);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderController, @selector(recievedSBHTMLUpdate:), (IMP)&_logos_method$SpringBoard$SBRootFolderController$recievedSBHTMLUpdate$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderController, @selector(recievedSBHTMLPerPageUpdate:), (IMP)&_logos_method$SpringBoard$SBRootFolderController$recievedSBHTMLPerPageUpdate$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderController, @selector(_xenhtml_contentView), (IMP)&_logos_method$SpringBoard$SBRootFolderController$_xenhtml_contentView, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'q'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBRootFolderController, @selector(_xenhtml_currentPageIndex), (IMP)&_logos_method$SpringBoard$SBRootFolderController$_xenhtml_currentPageIndex, _typeEncoding); }Class _logos_class$SpringBoard$SBIconScrollView = objc_getClass("SBIconScrollView"); _logos_superclass$SpringBoard$SBIconScrollView = class_getSuperclass(_logos_class$SpringBoard$SBIconScrollView); { _logos_register_hook$(_logos_class$SpringBoard$SBIconScrollView, @selector(layoutSubviews), (IMP)&_logos_method$SpringBoard$SBIconScrollView$layoutSubviews, (IMP *)&_logos_orig$SpringBoard$SBIconScrollView$layoutSubviews);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$SpringBoard$SBIconScrollView, @selector(_xenhtml_recievedSettingsUpdate), (IMP)&_logos_method$SpringBoard$SBIconScrollView$_xenhtml_recievedSettingsUpdate, _typeEncoding); }{ _logos_register_hook$(_logos_class$SpringBoard$SBIconScrollView, @selector(addSubview:), (IMP)&_logos_method$SpringBoard$SBIconScrollView$addSubview$, (IMP *)&_logos_orig$SpringBoard$SBIconScrollView$addSubview$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBIconScrollView, @selector(insertSubview:atIndex:), (IMP)&_logos_method$SpringBoard$SBIconScrollView$insertSubview$atIndex$, (IMP *)&_logos_orig$SpringBoard$SBIconScrollView$insertSubview$atIndex$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBIconScrollView, @selector(hitTest:withEvent:), (IMP)&_logos_method$SpringBoard$SBIconScrollView$hitTest$withEvent$, (IMP *)&_logos_orig$SpringBoard$SBIconScrollView$hitTest$withEvent$);}{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(BOOL)); class_addMethod(_logos_class$SpringBoard$SBIconScrollView, @selector(_xenhtml_isForegroundWidgetHoster), (IMP)&_logos_method$SpringBoard$SBIconScrollView$_xenhtml_isForegroundWidgetHoster, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(BOOL)); class_addMethod(_logos_class$SpringBoard$SBIconScrollView, @selector(set_xenhtml_isForegroundWidgetHoster:), (IMP)&_logos_method$SpringBoard$SBIconScrollView$set_xenhtml_isForegroundWidgetHoster, _typeEncoding); } Class _logos_class$SpringBoard$SBRootIconListView = objc_getClass("SBRootIconListView"); _logos_superclass$SpringBoard$SBRootIconListView = class_getSuperclass(_logos_class$SpringBoard$SBRootIconListView); { _logos_register_hook$(_logos_class$SpringBoard$SBRootIconListView, @selector(hitTest:withEvent:), (IMP)&_logos_method$SpringBoard$SBRootIconListView$hitTest$withEvent$, (IMP *)&_logos_orig$SpringBoard$SBRootIconListView$hitTest$withEvent$);}Class _logos_class$SpringBoard$SBHomeScreenPreviewView = objc_getClass("SBHomeScreenPreviewView"); _logos_superclass$SpringBoard$SBHomeScreenPreviewView = class_getSuperclass(_logos_class$SpringBoard$SBHomeScreenPreviewView); { _logos_register_hook$(_logos_class$SpringBoard$SBHomeScreenPreviewView, @selector(initWithFrame:iconController:), (IMP)&_logos_method$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$, (IMP *)&_logos_orig$SpringBoard$SBHomeScreenPreviewView$initWithFrame$iconController$);}Class _logos_class$SpringBoard$WKWebView = objc_getClass("WKWebView"); _logos_superclass$SpringBoard$WKWebView = class_getSuperclass(_logos_class$SpringBoard$WKWebView); { _logos_register_hook$(_logos_class$SpringBoard$WKWebView, @selector(_shouldUpdateKeyboardWithInfo:), (IMP)&_logos_method$SpringBoard$WKWebView$_shouldUpdateKeyboardWithInfo$, (IMP *)&_logos_orig$SpringBoard$WKWebView$_shouldUpdateKeyboardWithInfo$);}Class _logos_class$SpringBoard$_UIPlatterView = objc_getClass("_UIPlatterView"); _logos_superclass$SpringBoard$_UIPlatterView = class_getSuperclass(_logos_class$SpringBoard$_UIPlatterView); { _logos_register_hook$(_logos_class$SpringBoard$_UIPlatterView, @selector(didMoveToSuperview), (IMP)&_logos_method$SpringBoard$_UIPlatterView$didMoveToSuperview, (IMP *)&_logos_orig$SpringBoard$_UIPlatterView$didMoveToSuperview);}Class _logos_class$SpringBoard$UIWKTextLoupeInteraction = objc_getClass("UIWKTextLoupeInteraction"); _logos_superclass$SpringBoard$UIWKTextLoupeInteraction = class_getSuperclass(_logos_class$SpringBoard$UIWKTextLoupeInteraction); { _logos_register_hook$(_logos_class$SpringBoard$UIWKTextLoupeInteraction, @selector(loupeGesture:), (IMP)&_logos_method$SpringBoard$UIWKTextLoupeInteraction$loupeGesture$, (IMP *)&_logos_orig$SpringBoard$UIWKTextLoupeInteraction$loupeGesture$);}Class _logos_class$SpringBoard$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); _logos_superclass$SpringBoard$SBLockScreenViewController = class_getSuperclass(_logos_class$SpringBoard$SBLockScreenViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenViewController, @selector(_setMediaControlsVisible:), (IMP)&_logos_method$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenViewController$_setMediaControlsVisible$);}Class _logos_class$SpringBoard$SBLockScreenNotificationListController = objc_getClass("SBLockScreenNotificationListController"); _logos_superclass$SpringBoard$SBLockScreenNotificationListController = class_getSuperclass(_logos_class$SpringBoard$SBLockScreenNotificationListController); { _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenNotificationListController, @selector(initWithNibName:bundle:), (IMP)&_logos_method$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenNotificationListController$initWithNibName$bundle$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelAndViewForRemovalOfItem:), (IMP)&_logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForRemovalOfItem$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelForRemovalOfItem:updateView:), (IMP)&_logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelForRemovalOfItem$updateView$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBLockScreenNotificationListController, @selector(_updateModelAndViewForAdditionOfItem:), (IMP)&_logos_method$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$, (IMP *)&_logos_orig$SpringBoard$SBLockScreenNotificationListController$_updateModelAndViewForAdditionOfItem$);}Class _logos_class$SpringBoard$SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController"); _logos_superclass$SpringBoard$SBDashBoardCombinedListViewController = class_getSuperclass(_logos_class$SpringBoard$SBDashBoardCombinedListViewController); { _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardCombinedListViewController, @selector(_setListHasContent:), (IMP)&_logos_method$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_setListHasContent$);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardCombinedListViewController, @selector(_listViewDefaultContentInsets), (IMP)&_logos_method$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets, (IMP *)&_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$_listViewDefaultContentInsets);}{ _logos_register_hook$(_logos_class$SpringBoard$SBDashBoardCombinedListViewController, @selector(viewWillAppear:), (IMP)&_logos_method$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$, (IMP *)&_logos_orig$SpringBoard$SBDashBoardCombinedListViewController$viewWillAppear$);}Class _logos_class$SpringBoard$UITouchesEvent = objc_getClass("UITouchesEvent"); _logos_superclass$SpringBoard$UITouchesEvent = class_getSuperclass(_logos_class$SpringBoard$UITouchesEvent); { _logos_register_hook$(_logos_class$SpringBoard$UITouchesEvent, @selector(touchesForGestureRecognizer:), (IMP)&_logos_method$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$, (IMP *)&_logos_orig$SpringBoard$UITouchesEvent$touchesForGestureRecognizer$);}{ _logos_register_hook$(_logos_class$SpringBoard$UITouchesEvent, @selector(touchesForView:), (IMP)&_logos_method$SpringBoard$UITouchesEvent$touchesForView$, (IMP *)&_logos_orig$SpringBoard$UITouchesEvent$touchesForView$);}Class _logos_class$SpringBoard$UITouch = objc_getClass("UITouch"); _logos_superclass$SpringBoard$UITouch = class_getSuperclass(_logos_class$SpringBoard$UITouch); { _logos_register_hook$(_logos_class$SpringBoard$UITouch, @selector(view), (IMP)&_logos_method$SpringBoard$UITouch$view, (IMP *)&_logos_orig$SpringBoard$UITouch$view);}{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(id)); class_addMethod(_logos_class$SpringBoard$UITouch, @selector(_xh_forwardingView), (IMP)&_logos_method$SpringBoard$UITouch$_xh_forwardingView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(id)); class_addMethod(_logos_class$SpringBoard$UITouch, @selector(set_xh_forwardingView:), (IMP)&_logos_method$SpringBoard$UITouch$set_xh_forwardingView, _typeEncoding); } }
        
        CFNotificationCenterRef r = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(r, NULL, XENHSettingsChanged, CFSTR("com.matchstic.xenhtml/settingschanged"), NULL, 0);
        CFNotificationCenterAddObserver(r, NULL, XENHDidModifyConfig, CFSTR("com.matchstic.xenhtml/sbconfigchanged"), NULL, 0);
        CFNotificationCenterAddObserver(r, NULL, XENHDidRequestRespring, CFSTR("com.matchstic.xenhtml/wantsrespring"), NULL, 0);
        CFNotificationCenterAddObserver(r, NULL, XENHDidModifyConfig, CFSTR("com.matchstic.xenhtml/jsconfigchanged"), NULL, 0);
    }
}
