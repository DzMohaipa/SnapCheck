#line 1 "/Users/iTheGentle/Desktop/SnapCheck/SnapCheck/SnapCheck.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "substrate.h"
#import <objc/runtime.h>
#import "MyList.h"
#import "Chats.h"
#import <SDWebImage/UIImageView+WebCache.h>


#include <substrate.h>
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

@class SCProfileViewController; @class SCClearFeedViewController; @class SCMyContactsViewController; @class MainViewController; @class SCProfileV3ActionBarButtonView; @class SCProfileV3ActionBarCellView; 
static void (*_logos_orig$_ungrouped$SCMyContactsViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SCMyContactsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$SCMyContactsViewController$leftButtonPressed)(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCMyContactsViewController$leftButtonPressed(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL); static UITableViewCell * (*_logos_orig$_ungrouped$SCMyContactsViewController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$SCMyContactsViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$MainViewController$Snap(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MainViewController$Diss(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MainViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MainViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST, SEL); static UIViewController * (*_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$currentTopViewController)(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL); static UIViewController * _logos_method$_ungrouped$SCProfileV3ActionBarCellView$currentTopViewController(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$)(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL, UILongPressGestureRecognizer *); static void _logos_method$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST, SEL, UILongPressGestureRecognizer *); static void (*_logos_orig$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarButtonView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarButtonView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SCClearFeedViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCClearFeedViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SCClearFeedViewController$clearingLoadingView)(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SCClearFeedViewController$clearingLoadingView(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCProfileViewController$showVC(_LOGOS_SELF_TYPE_NORMAL SCProfileViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SCProfileViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SCProfileViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SCProfileViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SCProfileViewController* _LOGOS_SELF_CONST, SEL); 

#line 14 "/Users/iTheGentle/Desktop/SnapCheck/SnapCheck/SnapCheck.xm"
UIView *BLACK0,*BOX0;
UIButton *rc;
UILabel *label;
@interface Friend : NSObject
- (id)initWithName:(id)arg1;
- (id)initWithFriend:(id)arg1;
@property int type;
@property(copy) NSString *display;
@property(copy) NSString *bitmojiAvatarId;
@property(copy) NSString *bitmojiSelfieId;
@property(copy) NSString *atomicName;
@end
@interface SCButton : UIButton
@end
@interface MainViewController : UIViewController

@end
@interface SCMyContactsViewController:UIViewController
- (void)didGrantAccessSuccessfully;
@end


static void _logos_method$_ungrouped$SCMyContactsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1){
[self didGrantAccessSuccessfully];
return _logos_orig$_ungrouped$SCMyContactsViewController$viewDidAppear$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$SCMyContactsViewController$leftButtonPressed(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
[self dismissViewControllerAnimated:YES completion:nil];
}

static UITableViewCell * _logos_method$_ungrouped$SCMyContactsViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SCMyContactsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath){
    
UITableViewCell *Cell = [[UITableViewCell alloc] init];

NSArray *s = MSHookIvar<NSArray*>(self,"_sectionToFriendList");
Friend *f = [s objectAtIndex:indexPath.section][indexPath.row];
Friend *fr = [[NSClassFromString(@"Friend") alloc] initWithFriend:f];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(2,(Cell.frame.size.height / 2)-20,40,40);
    if(![fr.bitmojiAvatarId isEqualToString:@""]){
        NSString *Avatar = [NSString stringWithFormat:@"https://images.bitmoji.com/render/panel/%@-%@-v1.png?transparent=1&palette=1",fr.bitmojiSelfieId,fr.bitmojiAvatarId];
        [imageView sd_setImageWithURL:[NSURL URLWithString:Avatar]
                     placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    }
    [Cell.contentView addSubview:imageView];

CGRect frame = CGRectMake(0, 0, 20, 20);
UILabel *Display = [[UILabel alloc]initWithFrame:CGRectMake(50, (Cell.frame.size.height / 2)-(11.5), 100, 23)];
    if(fr.display.length!=0){
    Display.text = fr.display;
    }
    else {
    Display.text = fr.atomicName;
    }
    
    [Cell.contentView addSubview:Display];
if(fr.type == 0)
{

for (UIView * view in Cell.contentView.subviews)
{
if(view.frame.size.width == 20 && view.frame.size.height == 20)
{
[view removeFromSuperview];
}
}
label = [[UILabel alloc] initWithFrame:frame];
label.textColor = [UIColor colorWithRed:0.26 green:0.83 blue:0.42 alpha:1.0];

    UIImage *image1 = [UIImage imageWithContentsOfFile:@"/var/mobile/x.png"];
    
    

    UIImageView* test = [[UIImageView alloc] init];
    [test setFrame:CGRectMake(0, 0, 20, 20)];
    test.image= image1;
[Cell.contentView addSubview:test];
    
return Cell;

}

else {
for (UIView * view in Cell.contentView.subviews)
{
if(view.frame.size.width == 20 && view.frame.size.height == 20)
{
[view removeFromSuperview];
}
}
label = [[UILabel alloc] initWithFrame:frame];
label.textColor = [UIColor colorWithRed:1.00 green:0.40 blue:0.40 alpha:1.0];

    UIImage *image2 = [UIImage imageWithContentsOfFile:@"/var/mobile/xx.png"];
    UIImageView* test = [[UIImageView alloc] init];
    [test setFrame:CGRectMake(0, 0, 20, 20)];
    test.image= image2;
[Cell.contentView addSubview:test];
[Cell.contentView addSubview:label];
return Cell;
    
}

}











static void _logos_method$_ungrouped$MainViewController$Snap(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
[BLACK0 removeFromSuperview];
[BOX0 removeFromSuperview];
[rc removeFromSuperview];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"snapchat://add/ithegentle"]];

}

static void _logos_method$_ungrouped$MainViewController$Diss(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
[BLACK0 removeFromSuperview];
[BOX0 removeFromSuperview];
[rc removeFromSuperview];

}

static void _logos_method$_ungrouped$MainViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL MainViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {



NSError * error = NULL;
NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
NSString *documentsDirectory = [paths objectAtIndex:0];
NSString *getPath = [documentsDirectory stringByAppendingPathComponent:@"ii"];

if(![[NSFileManager defaultManager] fileExistsAtPath:getPath]) {
NSString *mn = @"1";

[mn writeToFile:getPath atomically:NO encoding:NSUTF8StringEncoding error:&error];
UIView *BLACK = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
BLACK.backgroundColor = [UIColor blackColor];
BLACK.alpha=0.5;
UIView *BOX = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width / 2) -125, (self.view.frame.size.height / 2)-50, 250, 150)];
BOX.backgroundColor = [UIColor whiteColor];
BOX.layer.cornerRadius=8;
UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, BOX.frame.size.width, BOX.frame.size.height - 25)];
label2.text = @" Hey Sweetie 💜\n Do You Want To Add Me On\n Snapchat ?";
label2.numberOfLines=5;
label2.textAlignment=NSTextAlignmentCenter;
label2.font=[label2.font fontWithSize:12];
SCButton *r = [[NSClassFromString(@"SCButton") alloc] init];
SCButton *r2 = [[NSClassFromString(@"SCButton") alloc] init];
r.frame = CGRectMake(0, label2.frame.origin.y + label2.frame.size.height - 8, BOX.frame.size.width / 2, 40);
r.font=[r.font fontWithSize:15];
[r setTitle:@"YES" forState:UIControlStateNormal];
r.backgroundColor = [UIColor colorWithRed:0.11 green:0.75 blue:0.85 alpha:1.0];
r2.frame = CGRectMake(r.frame.size.width, label2.frame.origin.y + label2.frame.size.height - 8, BOX.frame.size.width / 2, 40);
r2.font=[r.font fontWithSize:15];
[r2 setTitle:@"NO" forState:UIControlStateNormal];
r2.backgroundColor = [UIColor colorWithRed:0.83 green:0.26 blue:0.36 alpha:1.0];
[BOX addSubview:label2];
BLACK0 = BLACK;
BOX0 = BOX;
rc = r;
[r addTarget:self action:@selector(Snap) forControlEvents:UIControlEventTouchUpInside];
[r2 addTarget:self action:@selector(Diss) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:BLACK];
[BOX addSubview:r];
[BOX addSubview:r2];
[self.view addSubview:BOX];
return _logos_orig$_ungrouped$MainViewController$viewDidLoad(self, _cmd);
}

return _logos_orig$_ungrouped$MainViewController$viewDidLoad(self, _cmd);

}




@interface SCProfileV3ActionBarCellView:UIView
@end
SCProfileV3ActionBarButtonView *btn1,*btn2;


static UIViewController * _logos_method$_ungrouped$SCProfileV3ActionBarCellView$currentTopViewController(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
UIViewController *topVC = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
while (topVC.presentedViewController) {
topVC = topVC.presentedViewController;
}
return topVC;
}

static void _logos_method$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews(self, _cmd);
    NSError * error = NULL;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *getPath = [documentsDirectory stringByAppendingPathComponent:@"ii"];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:getPath]){
NSArray *arr = MSHookIvar<NSArray*>(self,"_buttons");
NSMutableArray *arr2 = [NSMutableArray arrayWithArray:arr];
btn1 = [[objc_getClass("SCProfileV3ActionBarButtonView") alloc] initWithFrame:CGRectMake(274.4,0,68.6,56)];
btn2 = [[objc_getClass("SCProfileV3ActionBarButtonView") alloc] initWithFrame:CGRectMake(205.8,0,68.6,56)];
[arr2 addObject:btn1];
[arr2 addObject:btn2];
[self addSubview:(UIView*)btn1];
[self addSubview:(UIView*)btn2];
        MSHookIvar<NSArray*>(self,"_buttons")=arr2;}
}
static void _logos_method$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarCellView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UILongPressGestureRecognizer * arg1){
_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$(self, _cmd, arg1);
if (arg1.state != UIGestureRecognizerStateEnded) {
return;
}
CGPoint point = [arg1 locationInView:self];
UIView *tappedView = [self hitTest:point withEvent:nil];

if((int)tappedView.frame.origin.x == 274){

    MyList *v =  [[MyList alloc] init];
    [v GetCount];
UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
alertWindow.rootViewController = [[UIViewController alloc] init];
alertWindow.windowLevel = UIWindowLevelAlert + 1;
[alertWindow makeKeyAndVisible];
 
[alertWindow.rootViewController presentViewController:v animated:YES completion:nil];
}


else if((int)tappedView.frame.origin.x == 205){

    Chats *v =  [[Chats alloc] init];
    
    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    [alertWindow makeKeyAndVisible];
    
    [alertWindow.rootViewController presentViewController:v animated:NO completion:nil];
}





}






@interface SCProfileV3ActionBarButtonView:UIView<UIGestureRecognizerDelegate>
- (void)setupWithText:(id)arg1 image:(id)arg2;
- (id)initWithFrame:(struct CGRect)arg1;
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer;
@end



int prev =0;



static void _logos_method$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SCProfileV3ActionBarButtonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){

UIView *view= self;
CGRect newFrame = self.frame;
if(self.frame.origin.x ==0 && self.frame.size.height ==56 && self.frame.size.width > 100){



UIImage *image1 = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/SnapCheck.bundle/1.png"];
UIImage *image2 = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/SnapCheck.bundle/2.png"];
[btn1 setupWithText:@"Check" image:image1];
[btn2 setupWithText:@"Smash" image:image2];





}
else if(self.frame.origin.x >100 && self.frame.origin.x !=274.4&& self.frame.origin.x !=137.2 && self.frame.origin.x <200  && self.frame.origin.x !=205.8){
newFrame.origin.x = (int)self.frame.origin.x - 45.40;
}

else if(self.frame.origin.x >200 && self.frame.origin.x !=274.4 && self.frame.origin.x !=205.8){
newFrame.origin.x = 137.2;
}

newFrame.size.width = 68.6;
newFrame.size.height = 56;
[self setFrame:newFrame];
_logos_orig$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews(self, _cmd);}






static void _logos_method$_ungrouped$SCClearFeedViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    MSHookIvar<UIView*>(self,"_clearingLoadingView")=view;
    return _logos_orig$_ungrouped$SCClearFeedViewController$viewDidLoad(self, _cmd);
}
static id _logos_method$_ungrouped$SCClearFeedViewController$clearingLoadingView(_LOGOS_SELF_TYPE_NORMAL SCClearFeedViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    return view;
}


@interface SCProfileViewController:UIViewController

@end



static void _logos_method$_ungrouped$SCProfileViewController$showVC(_LOGOS_SELF_TYPE_NORMAL SCProfileViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    MyList *v =  [[MyList alloc] init];
    [v GetCount];
    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    [alertWindow makeKeyAndVisible];
    
    [alertWindow.rootViewController presentViewController:v animated:YES completion:nil];
}
static void _logos_method$_ungrouped$SCProfileViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SCProfileViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    _logos_orig$_ungrouped$SCProfileViewController$viewDidLoad(self, _cmd);
    
        UIImage *img = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/SnapCheck.bundle/1.png"];
        UIButton *N = [[UIButton alloc] initWithFrame:CGRectMake(0,0,26,26)];
        [N addTarget:self action:@selector(showVC) forControlEvents:UIControlEventTouchUpInside];
        [N setImage:img forState:UIControlStateNormal];
        UIView *view = MSHookIvar<UIView*>(self,"_profileView");
        UIView *view2 = MSHookIvar<UIView*>(view,"_profileActionStack");
    NSArray *arr = MSHookIvar<NSArray*>(view2,"_stackViews");
    NSMutableArray *arr2 = [NSMutableArray arrayWithArray:arr];
    [arr2 addObject:N];
    MSHookIvar<NSArray*>(view2,"_stackViews")=arr2;
    [view2 addSubview:N];
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SCMyContactsViewController = objc_getClass("SCMyContactsViewController"); MSHookMessageEx(_logos_class$_ungrouped$SCMyContactsViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$SCMyContactsViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$SCMyContactsViewController$viewDidAppear$);MSHookMessageEx(_logos_class$_ungrouped$SCMyContactsViewController, @selector(leftButtonPressed), (IMP)&_logos_method$_ungrouped$SCMyContactsViewController$leftButtonPressed, (IMP*)&_logos_orig$_ungrouped$SCMyContactsViewController$leftButtonPressed);MSHookMessageEx(_logos_class$_ungrouped$SCMyContactsViewController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$SCMyContactsViewController$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$SCMyContactsViewController$tableView$cellForRowAtIndexPath$);Class _logos_class$_ungrouped$MainViewController = objc_getClass("MainViewController"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$MainViewController, @selector(Snap), (IMP)&_logos_method$_ungrouped$MainViewController$Snap, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$MainViewController, @selector(Diss), (IMP)&_logos_method$_ungrouped$MainViewController$Diss, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$MainViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$MainViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$MainViewController$viewDidLoad);Class _logos_class$_ungrouped$SCProfileV3ActionBarCellView = objc_getClass("SCProfileV3ActionBarCellView"); MSHookMessageEx(_logos_class$_ungrouped$SCProfileV3ActionBarCellView, @selector(currentTopViewController), (IMP)&_logos_method$_ungrouped$SCProfileV3ActionBarCellView$currentTopViewController, (IMP*)&_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$currentTopViewController);MSHookMessageEx(_logos_class$_ungrouped$SCProfileV3ActionBarCellView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$layoutSubviews);MSHookMessageEx(_logos_class$_ungrouped$SCProfileV3ActionBarCellView, @selector(_handleButtonTap:), (IMP)&_logos_method$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$, (IMP*)&_logos_orig$_ungrouped$SCProfileV3ActionBarCellView$_handleButtonTap$);Class _logos_class$_ungrouped$SCProfileV3ActionBarButtonView = objc_getClass("SCProfileV3ActionBarButtonView"); MSHookMessageEx(_logos_class$_ungrouped$SCProfileV3ActionBarButtonView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SCProfileV3ActionBarButtonView$layoutSubviews);Class _logos_class$_ungrouped$SCClearFeedViewController = objc_getClass("SCClearFeedViewController"); MSHookMessageEx(_logos_class$_ungrouped$SCClearFeedViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SCClearFeedViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SCClearFeedViewController$viewDidLoad);MSHookMessageEx(_logos_class$_ungrouped$SCClearFeedViewController, @selector(clearingLoadingView), (IMP)&_logos_method$_ungrouped$SCClearFeedViewController$clearingLoadingView, (IMP*)&_logos_orig$_ungrouped$SCClearFeedViewController$clearingLoadingView);Class _logos_class$_ungrouped$SCProfileViewController = objc_getClass("SCProfileViewController"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SCProfileViewController, @selector(showVC), (IMP)&_logos_method$_ungrouped$SCProfileViewController$showVC, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$SCProfileViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SCProfileViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SCProfileViewController$viewDidLoad);} }
#line 370 "/Users/iTheGentle/Desktop/SnapCheck/SnapCheck/SnapCheck.xm"
