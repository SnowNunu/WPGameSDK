//
//  WPProductModel.h
//  WPGameSDK
//
//  Created by Mandora on 2023/3/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WPProductModel : NSObject

/// 商品订单号
@property (nonatomic, strong) NSString *orderId;

/// 支付金额
@property (nonatomic, strong) NSString *amount;

/// 商品名称
@property (nonatomic, strong) NSString *goodsname;

/// 商品描述
@property (nonatomic, strong) NSString *goodsdes;

/// 角色ID
@property (nonatomic, strong) NSString *roleid;

/// 角色名称
@property (nonatomic, strong) NSString *rolename;

/// 区服id
@property (nonatomic, strong) NSString *areaid;

/// 区服名称
@property (nonatomic, strong) NSString *areaname;

/// VIP等级
@property (nonatomic, strong) NSString *vip;

@end

NS_ASSUME_NONNULL_END
