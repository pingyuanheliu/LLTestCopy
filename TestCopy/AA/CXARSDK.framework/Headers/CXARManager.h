//
//  CXARManager.h
//  CXARSDK
//
//  Created by LL on 2018/3/15.
//  Copyright © 2018年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//App权限
extern NSString *const kAppAuth;
//相机权限
extern NSString *const kCamera;
//定位权限
extern NSString *const kLocation;
//网络异常或服务器异常
extern NSString *const kNetworkError;
//用户未登录或登录异常
extern NSString *const kNotLoggedIn;
//活动未开放或活动异常
extern NSString *const kNotOpen;
//活动列表错误
extern NSString *const kActivityError;
//收件箱
extern NSString *const kInbox;
//分享
extern NSString *const kShare;
//返回
extern NSString *const kARBack;

/**
 服务器环境
 */
typedef NS_ENUM(NSInteger, CXServerEnvironment) {
    CXLiveEnvironment = 0,       //正式线
    CXGrayEnvironment = 1,       //灰度线
    CXDevEnvironment = 2,        //开发线
    CXTestEnvironment = 3,       //测试线
};

@interface CXARManager : NSObject

/**
 发布类型
 默认使用（即默认正式线地址）
 
 @param type 发布类型
 */
+ (void)setDistributionType:(CXServerEnvironment)type;

/**
 是否启用自定义分享
 
 @param enable 启用
 */
+ (void)enableCustomShare:(BOOL)enable;

/**
 设置登录信息
 @param sid 登录标识
 @param rmkey 登录标识
 */
+ (void)setLogin:(NSString *)sid rmkey:(NSString *)rmkey;
/**
 设置APP来源
 @param appID 来源ID
 @param secret 来源密钥
 */
+ (void)setAppID:(NSString *)appID secret:(NSString *)secret;

/**
 设置APP渠道
 和AppID区别，APPID区别iOS和Android，iOS和Android可能是同一个Channel
 比如中国移动集团AR分Android和iOS，两个AppID，但是共用一个Channel
 Channel可为空，当为空时，表示全渠道
 @param channel 渠道
 */
+ (void)setAppChannel:(NSString *)channel;

/**
 校验手机号码（非移动号码不能参与AR活动）
 
 @param phone 手机号码
 @param complete 结果回调
 */
+ (void)checkARPhone:(NSString *)phone complete:(void (^)(BOOL isOpen))complete;

/**
 校验是否开放AR入口
 @param phone 手机号码
 @param complete 结果回调
 */
+ (void)checkAROpen:(NSString *)phone complete:(void (^)(BOOL isOpen))complete;

/**
 进入AR活动
 @param vc 入口ViewController
 @param animated 是否开启动画
 @param state 状态信息(实际为字典类型,{result:"",type:"",desc:"",info:"",vc:""})
 */
+ (void)showAR:(UIViewController *)vc
      animated:(BOOL)animated
         state:(void (^)(id info))state;
/**
 退出AR
 */
+ (void)dismissAR;

@end
