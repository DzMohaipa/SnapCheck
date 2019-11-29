//
//  MyList.m
//  SnapCheck
//
//  Created by iTheGentle on 6/24/18.
//

#import "MyList.h"
@interface Friend : NSObject
- (id)initWithName:(id)arg1;
- (id)initWithFriend:(id)arg1;
@property int type;
@property(copy) NSString *display;
@property(copy) NSString *bitmojiAvatarId;
@property(copy) NSString *bitmojiSelfieId;
@property(copy) NSString *atomicName;
@end
@interface SCMyContactsViewController:UIViewController
@property(retain, nonatomic) NSArray *sectionToFriendList; // @synthesize sectionToFriendList=_sectionToFriendList;
- (void)_setupFriendsSectionList;

@end
@interface MyList ()
{
    SCMyContactsViewController *myContacts;
}
@end
UILabel *label;

@implementation MyList
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}
-(void)GetCount{
    myContacts = [NSClassFromString(@"SCMyContactsViewController") new];
    [myContacts _setupFriendsSectionList];
    if(myContacts.sectionToFriendList.count > 1){
    self.cnt =(int)[[myContacts.sectionToFriendList objectAtIndex:1] count];
    }
    else {
    self.cnt =(int)[[myContacts.sectionToFriendList objectAtIndex:0] count];
    }
}

-(void)DONE{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    tbl = [[UITableView alloc] init];
    tbl.dataSource=self;
    tbl.delegate=self;
    UITabBar *bar = [[UITabBar alloc] init];
    bar.barStyle=1;
    bar.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    UILabel *Display = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, bar.frame.size.width, 20)];
    Display.textAlignment=1;
    Display.textColor=UIColor.whiteColor;
    Display.text = @"Following Status";
    UIButton *Done = [[UIButton alloc] init];
    Done.frame = CGRectMake(bar.frame.size.width - 55, Display.frame.origin.y, 55, 20);
    [Done setTitle:@"Done" forState:UIControlStateNormal];
    [Done addTarget:self action:@selector(DONE) forControlEvents:UIControlEventTouchUpInside];
    [bar addSubview:Done];
    [bar addSubview:Display];
    
    
    tbl.frame = CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height - 40);
    
   
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    tbl.backgroundColor=UIColor.clearColor;
    tbl.allowsSelection=0;
    tbl.separatorStyle=UITableViewCellSeparatorStyleNone;
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    tbl.backgroundView = visualEffectView;
    visualEffectView.frame = self.view.bounds;
    [self.view addSubview:visualEffectView];
    [self.view addSubview:tbl];
    [self.view addSubview:bar];
    // Do any additional setup after loading the view.
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _cnt;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *Cell = [[UITableViewCell alloc] init];
    Cell.backgroundColor = UIColor.clearColor;
    Friend *f;
    if(myContacts.sectionToFriendList.count > 1){
    f = [myContacts.sectionToFriendList objectAtIndex:1][indexPath.row];
    }
    else{
   f = [myContacts.sectionToFriendList objectAtIndex:0][indexPath.row];
    }
    Friend *fr = [[NSClassFromString(@"Friend") alloc] initWithFriend:f];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(2,(Cell.frame.size.height / 2),40,40);
    if(fr.bitmojiAvatarId != nil){
        NSString *Avatar = [NSString stringWithFormat:@"https://images.bitmoji.com/render/panel/%@-%@-v1.png?transparent=1&palette=1",fr.bitmojiSelfieId,fr.bitmojiAvatarId];
        [imageView sd_setImageWithURL:[NSURL URLWithString:Avatar]
                     placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    }
    else{
        NSString *Avatar = [NSString stringWithFormat:@"http://hex-lab.com/temp/NIL.png"];
        [imageView sd_setImageWithURL:[NSURL URLWithString:Avatar]
                     placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    }
    [Cell.contentView addSubview:imageView];
    
    CGRect frame = CGRectMake(0, 0, 20, 20);
    UILabel *Display = [[UILabel alloc]initWithFrame:CGRectMake(50, (Cell.frame.size.height / 2) + 11, Cell.frame.size.width - 10, 23)];
    Display.textColor=UIColor.whiteColor;
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
        UIImage *image1 = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/SnapCheck.bundle/x.png"];
        
        
        
        UIImageView* test = [[UIImageView alloc] init];
        [test setFrame:CGRectMake(0, (Cell.frame.size.height / 2), 20, 20)];
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
        UIImage *image2 = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/SnapCheck.bundle/xx.png"];
        UIImageView* test = [[UIImageView alloc] init];
        [test setFrame:CGRectMake(0, (Cell.frame.size.height / 2), 20, 20)];
        test.image= image2;
        [Cell.contentView addSubview:test];
        [Cell.contentView addSubview:label];
        return Cell;
        
    }

    
  
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
