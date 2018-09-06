//
//  CXARDownloadManager.h
//  CXARDownloadSDK
//
//  Created by LL on 2018/2/26.
//  Copyright © 2018年 LL. All rights reserved.
//

#import <Foundation/Foundation.h>

//下载状态
typedef NS_ENUM(NSInteger, CXARDownloadState) {
    CXARDownloadError = 1,      //
    CXARDownloadBegin,          //
    CXARDownloadProgress,       //
    CXARDownloadEnd,            //
};


@interface CXARDownloadManager : NSObject

/**
 开始下载

 @param array 需要下载的内容数组
 @param handler 状态回调
 */
- (void)startDownloadWithArray:(NSArray *)array handler:(void(^)(CXARDownloadState state, float progress, NSArray *nameArr, NSError *error))handler;

@end
