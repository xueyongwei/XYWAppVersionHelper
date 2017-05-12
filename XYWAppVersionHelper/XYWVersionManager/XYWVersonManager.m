//
//  XYWVersonManager.m
//  downloader
//
//  Created by xueyognwei on 2017/5/2.
//  Copyright © 2017年 xueyognwei. All rights reserved.
//

#import "XYWVersonManager.h"
@implementation XYWVersonManager

/**
 float 上次启动时的版本号 ／ Version number of last launch
 
 @return float 类型的版本号，便于比较 / a float value
 */
+(float)lastVersionInter{
    float lastVersionInter = [[NSUserDefaults standardUserDefaults] floatForKey:@"currentAppVersionIntegerValue"];
    if (lastVersionInter&&lastVersionInter>0) {
        return lastVersionInter;
    }else{
        return 0;
    }
}

/**
 本次APP启动类型 / This APP launch type


 @return 启动类型 / launch type
 */
+(ApplaunchType)appThislaunchType{
    float lastVersion = [self lastVersionInter];
    float currentVersion = [self currentVersionInter];
    if (lastVersion==0) {
        return ApplaunchTypeAfterInstallFirstLabch;
    }else if (currentVersion > lastVersion){
        return ApplaunchTypeThisVersionFirstLabch;
    }else if (currentVersion < lastVersion){
        return ApplaunchTypeVersionFallback;
    }else {
        return ApplaunchTypeNormal;
    }
}


/**
 float 本次启动时的版本号 ／ Version number of this launch
 
 @return float 类型的版本号，便于比较 / a float value
 */
+(float)currentVersionInter{
    NSString *version = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    NSRange dotrange = [version rangeOfString:@"."];
    NSString *bigVersion = [version substringToIndex:dotrange.location];
    NSString *smallVersion = [version substringFromIndex:dotrange.location+dotrange.length];
    
    NSUserDefaults *usf = [NSUserDefaults standardUserDefaults];
    float currentVersion = bigVersion.integerValue*100+smallVersion.floatValue;
    [usf setFloat:currentVersion forKey:@"currentAppVersionIntegerValue"];
    return currentVersion;
}

@end
