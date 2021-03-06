//
//  UIColor+Hex.h
//  颜色常识
//
//  Created by 陈德豪 on 15/12/15.
//  Copyright © 2015年 chendehao. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CDHColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@interface UIColor (Hex)
// 默认alpha位1
+ (UIColor *)colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
