//
//  WPGameSDK.h
//  WPGameSDK
//
//  Created by Mandora on 2023/2/17.
//

#import <Foundation/Foundation.h>
#import "WPProductModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^LoginResultBlock) (NSString *);
typedef void(^RoleInfoUploadResultBlock) (BOOL);

@interface WPGameSDK : NSObject

+ (WPGameSDK *)sharedInstance;

/// 初始化SDK
/// - Parameters:
///   - appId: appId 平台分配的appId
///   - appKey: appKey 平台分配的appKey
- (void)initWithAppId:(NSString *)appId
               AppKey:(NSString *)appKey;

/// 登录
- (void)login:(LoginResultBlock)block;

/// 退出登录
- (void)logout;

/// 发起支付(道具购买)
/// - Parameter product: 道具详情
- (void)payForProduct:(WPProductModel * _Nonnull)product;

/// 上传用户角色信息变更
/// - Parameter info: 角色信息
/// - Parameter block: 上传结果
- (void)uploadPlayerRoleInfo:(NSDictionary * _Nonnull)info
                      result:(RoleInfoUploadResultBlock)block;

@end

NS_ASSUME_NONNULL_END
