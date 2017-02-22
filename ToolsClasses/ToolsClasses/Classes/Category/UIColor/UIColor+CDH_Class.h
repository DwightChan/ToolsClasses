//
//  UIColor+CDH_Class.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CDH_Class)


+ (UIColor *)cdh_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

/**
 *  16进制转uicolor 默认alpha 位 1
 *
 *  @param color 支持@“#123456”、@“0X123456”、@“123456”、@“#123”、@“0X123”、@“123”  六种格式
 *
 *  @return uicolor
 */
+ (UIColor *)cdh_colorWithHexString:(NSString *)color;
+ (UIColor *)cdh_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
