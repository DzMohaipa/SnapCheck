// See http://iphonedevwiki.net/index.php/Logos

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
%hook SCMyContactsViewController
//%hook SCFeedViewController
- (void)viewDidAppear:(BOOL)arg1{
[self didGrantAccessSuccessfully];
return %orig;
}
- (void)leftButtonPressed{
[self dismissViewControllerAnimated:YES completion:nil];
}

-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath{
    
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
//label.text = @"✔︎";
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
//label.text = @"✖︎";
    UIImage *image2 = [UIImage imageWithContentsOfFile:@"/var/mobile/xx.png"];
    UIImageView* test = [[UIImageView alloc] init];
    [test setFrame:CGRectMake(0, 0, 20, 20)];
    test.image= image2;
[Cell.contentView addSubview:test];
[Cell.contentView addSubview:label];
return Cell;
    
}

}

%end





%hook MainViewController


%new
-(void)Snap{
[BLACK0 removeFromSuperview];
[BOX0 removeFromSuperview];
[rc removeFromSuperview];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"snapchat://add/ithegentle"]];

}
%new
-(void)Diss{
[BLACK0 removeFromSuperview];
[BOX0 removeFromSuperview];
[rc removeFromSuperview];

}

-(void)viewDidLoad {



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
return %orig;
}

return %orig;

}
%end



@interface SCProfileV3ActionBarCellView:UIView
@end
SCProfileV3ActionBarButtonView *btn1,*btn2;
%hook SCProfileV3ActionBarCellView

- (UIViewController *)currentTopViewController {
UIViewController *topVC = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
while (topVC.presentedViewController) {
topVC = topVC.presentedViewController;
}
return topVC;
}

-(void)layoutSubviews{
%orig;
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
- (void)_handleButtonTap:(UILongPressGestureRecognizer *)arg1{
%orig;
if (arg1.state != UIGestureRecognizerStateEnded) {
return;
}
CGPoint point = [arg1 locationInView:self];
UIView *tappedView = [self hitTest:point withEvent:nil];
//who
if((int)tappedView.frame.origin.x == 274){

    MyList *v = /*[NSClassFromString(@"SCMyContactsViewController") new];*/ [[MyList alloc] init];
    [v GetCount];
UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
alertWindow.rootViewController = [[UIViewController alloc] init];
alertWindow.windowLevel = UIWindowLevelAlert + 1;
[alertWindow makeKeyAndVisible];
 
[alertWindow.rootViewController presentViewController:v animated:YES completion:nil];
}

//smash
else if((int)tappedView.frame.origin.x == 205){

    Chats *v = /*[NSClassFromString(@"SCMyContactsViewController") new];*/ [[Chats alloc] init];
    
    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    [alertWindow makeKeyAndVisible];
    
    [alertWindow.rootViewController presentViewController:v animated:NO completion:nil];
}





}
%end





@interface SCProfileV3ActionBarButtonView:UIView<UIGestureRecognizerDelegate>
- (void)setupWithText:(id)arg1 image:(id)arg2;
- (id)initWithFrame:(struct CGRect)arg1;
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer;
@end



int prev =0;
%hook SCProfileV3ActionBarButtonView


- (void)layoutSubviews{

UIView *view= self;
CGRect newFrame = self.frame;
if(self.frame.origin.x ==0 && self.frame.size.height ==56 && self.frame.size.width > 100){

//SCProfileV3ActionBarButtonView *btn1 = [[objc_getClass("SCProfileV3ActionBarButtonView") alloc] initWithFrame:CGRectMake(274.4,self.frame.origin.y,68.6,56)];
//SCProfileV3ActionBarButtonView *btn2 = [[objc_getClass("SCProfileV3ActionBarButtonView") alloc] initWithFrame:CGRectMake(205.8,self.frame.origin.y,68.6,56)];
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
%orig;}

%end



%hook SCClearFeedViewController
- (void)viewDidLoad{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    MSHookIvar<UIView*>(self,"_clearingLoadingView")=view;
    return %orig;
}
- (id)clearingLoadingView{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    return view;
}
%end

@interface SCProfileViewController:UIViewController

@end

%hook SCProfileViewController
%new
-(void)showVC{
    MyList *v = /*[NSClassFromString(@"SCMyContactsViewController") new];*/ [[MyList alloc] init];
    [v GetCount];
    UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    [alertWindow makeKeyAndVisible];
    
    [alertWindow.rootViewController presentViewController:v animated:YES completion:nil];
}
-(void)viewDidLoad {

    %orig;
    
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


%end

