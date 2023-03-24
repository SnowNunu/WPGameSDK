//
//  WPViewController.m
//  WPGameSDK
//
//  Created by Mandora on 02/17/2023.
//  Copyright (c) 2023 Mandora. All rights reserved.
//

#import "WPViewController.h"

@interface WPViewController ()

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showLoginView:(id)sender {
    [[WPGameSDK sharedInstance] login:^(NSString *uid) {
        NSLog(@"登录成功uid:%@",uid);
    }];
}


- (IBAction)pay:(id)sender {
    WPProductModel *product = [WPProductModel new];
    product.orderId = [NSString stringWithFormat:@"ios_%d",(int)([[NSDate date] timeIntervalSince1970] * 1000)];
    product.amount = @"0.1";
    product.goodsname = @"100个钻石";
    product.goodsdes = @"完成充值可获得100个钻石";
    product.roleid = @"1";
    product.rolename = @"新手";
    product.areaid = @"888";
    product.areaname = @"微信一区";
    product.vip = @"0";
    [[WPGameSDK sharedInstance] payForProduct:product];
}

- (IBAction)uploadData:(id)sender {
    NSDictionary *roleInfo = @{
        @"datatype":@"1",               // 1：选择服务器 2：创建角色 3：进入游戏 4：等级提升 5：退出游戏
        @"roleid":@"888",               // 角色ID
        @"rolename":@"No89757",         // 角色名称
        @"areaid":@"958",               // 玩家所在服务器的ID
        @"areaname":@"server-101",      // 玩家所在服务器的名称
        @"rolemoney":@"10000",          // 当前角色身上拥有的游戏币数量
        @"rolelevel":@"88"              // 玩家角色等级
    };
    [[WPGameSDK sharedInstance] uploadPlayerRoleInfo:roleInfo result:^(BOOL result) {
        if (result) {
            NSLog(@"上传成功");
        } else {
            NSLog(@"上传失败");
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
