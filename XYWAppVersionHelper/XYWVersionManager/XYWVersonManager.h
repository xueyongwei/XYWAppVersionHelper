//
//  XYWVersonManager.h
//  downloader
//
//  Created by xueyognwei on 2017/5/2.
//  Copyright © 2017年 xueyognwei. All rights reserved.
//


/*
 处理一些版本升级兼容问题时用到。
 你可以更改bundleID来测试。
 理论来讲只需要用到appThislaunchType方法，根据返回值来做相应的操作。
 -----------
 this simple version manager is used to deal with version compatibility issues
 you can edit the bundle id to show the result of this laucn
 */

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, ApplaunchType) {
    ApplaunchTypeNormal,
    ApplaunchTypeThisVersionFirstLabch,
    ApplaunchTypeAfterInstallFirstLabch,
    ApplaunchTypeVersionFallback,
};
@interface XYWVersonManager : NSObject

/**
 float 上次启动时的版本号 ／ Version number of last launch
 
 @return float 类型的版本号，便于比较 / a float value
 */
+(float)lastVersionInter;

/**
 float 本次启动时的版本号 ／ Version number of this launch
 
 @return float 类型的版本号，便于比较 / a float value
 */
+(float)currentVersionInter;

/**
 本次APP启动类型 / This APP launch type
 
 
 @return 启动类型 / launch type
 */
+(ApplaunchType)appThislaunchType;
@end
