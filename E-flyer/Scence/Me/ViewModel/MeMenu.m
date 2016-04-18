//
//  MeMenu.m
//  E-flyer
//
//  Created by Jason_Msbaby on 16/3/8.
//  Copyright © 2016年 Jason_Msbaby. All rights reserved.
//

#import "MeMenu.h"
#import "ToolUtils.h"

@implementation MeMenu


- (id)initWithTitle:(NSString *)title Image:(NSString *)image IDD:(NSString *)idd{
    if (self = [super init]) {
        self.title = title;
        self.img = image;
        self.idd = idd;
    }
    return self;
}

- (id)initWithTitle:(NSString *)title Image:(NSString *)image{
    if (self = [super init]) {
        self.title = title;
        self.img = image;
        self.idd = [ToolUtils randomUUID];
    }
    return self;
}



+ (NSDictionary *)menuListWithUser:(EFUser *)currentUser{
    //商家个人菜单
    MeMenu *m1_1 = [[MeMenu alloc]initWithTitle:@"个人信息" Image:@"me_setting" IDD:@"personInfo"];
    MeMenu *m1_2 = [[MeMenu alloc]initWithTitle:@"店铺信息" Image:@"me_setting" IDD:@"barInfo"];
    MeMenu *m1_3= [[MeMenu alloc]initWithTitle:@"用户数据" Image:@"me_setting" IDD:@"userInfo"];
    MeMenu *m1_4 = [[MeMenu alloc]initWithTitle:@"商品管理" Image:@"me_setting" IDD:@"goodsInfo"];
    MeMenu *m1_5 = [[MeMenu alloc]initWithTitle:@"账户管理" Image:@"me_setting" IDD:@"acountInfo"];
    NSArray *m1 = @[m1_1,m1_2,m1_3,m1_4,m1_5];
    //个人菜单
    MeMenu *m11_1 = [[MeMenu alloc]initWithTitle:@"个人信息" Image:@"me_setting"];
    MeMenu *m11_2 = [[MeMenu alloc]initWithTitle:@"历史记录" Image:@"me_setting"];
    MeMenu *m11_3 = [[MeMenu alloc]initWithTitle:@"收入" Image:@"me_setting"];
    NSArray *m11 = @[m11_1,m11_2,m11_3];
    
    //通用菜单
    MeMenu *m2_1 = [[MeMenu alloc]initWithTitle:@"关于我们" Image:@"me_setting"];
    MeMenu *m2_2 = [[MeMenu alloc]initWithTitle:@"退出登录" Image:@"me_setting" IDD:@"exit"];
    NSMutableArray *m2 = [NSMutableArray arrayWithObjects:m2_1, nil];
    if (currentUser != nil) {
        [m2 addObject:m2_2];
    }
    
    if(currentUser.type == 0){
        return @{@"我的":m1,@"设置":m2};
    }else{
        return @{@"我的":m11,@"设置":m2};
    }
}
@end
