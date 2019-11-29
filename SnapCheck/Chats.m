//
//  Chats.m
//  SnapCheck
//
//  Created by iTheGentle on 6/25/18.
//

#import "Chats.h"

@interface Chats ()

@end
@interface SCButton : UIButton
@end

@interface SCClearFeedViewController:NSObject
- (void)clearAll;

@end

UIView *BLACK0,*BOX0;
UIButton *rc;
@implementation Chats
-(void)Diss{
    [self dismissViewControllerAnimated:NO completion:nil];
}
-(void)Del{
    SCClearFeedViewController *clear=[NSClassFromString(@"SCClearFeedViewController") new];
    [clear clearAll];
    [self dismissViewControllerAnimated:NO completion:nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *BLACK = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    BLACK.backgroundColor = [UIColor blackColor];
    BLACK.alpha=0.5;
    UIView *BOX = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width / 2) -125, (self.view.frame.size.height / 2)-50, 250, 150)];
    BOX.backgroundColor = [UIColor whiteColor];
    BOX.layer.cornerRadius=8;
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, BOX.frame.size.width, BOX.frame.size.height - 25)];
    label2.text = @" This Will Delete All Chats, 🤭\n Are You Sure ?\n*Notice: Repeat Deleting if Needed!";
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
    [r addTarget:self action:@selector(Del) forControlEvents:UIControlEventTouchUpInside];
    [r2 addTarget:self action:@selector(Diss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:BLACK];
    [BOX addSubview:r];
    [BOX addSubview:r2];
    [self.view addSubview:BOX];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
