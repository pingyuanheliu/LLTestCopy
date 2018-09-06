//
//  CXARCameraVC.h
//  CXARSDK
//
//  Created by LL on 2018/7/11.
//  Copyright © 2018年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CXARCameraType) {
    CXARCameraDefault = 0,      //默认
    CXARCameraScan,             //扫描
    CXARCameraPhoto,            //合影
};

@interface CXARCameraVC : UIViewController


/**
 是否使用默认相机
 */
@property (nonatomic, assign) BOOL enableDefault;

/**
 进入前台
 
 @param notification 通知
 */
- (void)willEnterForeground:(NSNotification *)notification;

/**
 进入后台
 
 @param notification 通知
 */
- (void)didEnterBackground:(NSNotification *)notification;


/**
 设置扫描视图
 
 @param view 视图
 */
- (void)setCameraInView:(UIView *)view;

/**
 设置扫描描述

 @param type 相机类型
 */
- (void)setScanMode:(CXARCameraType)type;

/**
 切换相机摄像头
 */
- (void)changeCameraPosition;

/**
 开始相机运行
 */
- (void)startCameraRunning;

/**
 停止相机
 */
- (void)stopCameraRunning;

/**
 获取图像数据
 
 @param complete 完成回调
 */
- (void)captureImage:(void(^)(UIImage *image))complete;

@end
