//
//  EFUser.m
//  E-flyer
//
//  Created by Jason_Msbaby on 16/3/8.
//  Copyright © 2016年 Jason_Msbaby. All rights reserved.
//

#import "EFUser.h"

@implementation EFUser
@dynamic money;
@dynamic type;
@dynamic headImg;

+(void)load{
    [super load];
    [self registerSubclass];
}
+ (NSString *)parseClassName{
    return @"_User";
}



@end
