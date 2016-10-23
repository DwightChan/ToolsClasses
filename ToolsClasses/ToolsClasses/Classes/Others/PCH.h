//
//  PCH.h
//  ToolsClasses
//
//  Created by 陈德豪 on 16/10/23.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#ifdef __OBJC__ // OC文件

#import "NSString+StringSizeWithFont.h"


#define NSLogFunc NSLog(@"%s",__func__)

#define IOS_7   ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)     // 要关闭导航栏玻璃效果［0］

#define kScreenSize           [[UIScreen mainScreen] bounds].size                 //(e.g. 320,480)
#define kScreenWidth          [[UIScreen mainScreen] bounds].size.width           //(e.g. 320)
#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height          //包含状态bar的高度(e.g. 480)

#define kApplicationSize      [[UIScreen mainScreen] applicationFrame].size       //(e.g. 320,460)
#define kApplicationWidth     [[UIScreen mainScreen] applicationFrame].size.width //(e.g. 320)
#define kApplicationHeight    [[UIScreen mainScreen] applicationFrame].size.height//不包含状态bar的高度(e.g. 460)

#define kStatusBarHeight      20
#define kNavigationBarHeight  44

#define kContentHeight       (IOS_7?(kScreenHeight):(kApplicationHeight-kNavigationBarHeight))
#define kContentHeight_Real  (kApplicationHeight-kNavigationBarHeight)

#define kTop_EdgeInset  (IOS_7?(UIEdgeInsetsMake(64,0,0,0)):(UIEdgeInsetsMake(0,0,0,0)))
#define kTop_EdgeHeight (IOS_7?(64):(0))
// 自定义LOG
// DEBUG比较特殊,不能跳.因为是在项目配置文件中设置.当日后发现有宏定义不能跳转,就是说明是在项目配置文件中设置的.

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)

#else
#define NSLog(...)
#endif

#endif
