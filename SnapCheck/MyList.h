//
//  MyList.h
//  SnapCheck
//
//  Created by iTheGentle on 6/24/18.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface MyList : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tbl;
}
@property int cnt;
-(void)GetCount;
- (id)init;
@end
