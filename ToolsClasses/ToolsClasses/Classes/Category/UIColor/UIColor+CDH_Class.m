//
//  UIColor+CDH_Class.m
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import "UIColor+CDH_Class.h"

@implementation UIColor (CDH_Class)

+ (UIColor *)cdh_colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
}

+ (UIColor *)cdh_colorWithHexString:(NSString *)color {
    return [self cdh_colorWithHexString:color alpha:1.0f];
}
+ (UIColor *)cdh_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    //删除字符串中的空格
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters

    
    if ([cString length] < 3) {
    //if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    
    NSRange range;
    range.location = 0;
    NSString *rString = nil;
    NSString *gString = nil;
    NSString *bString = nil;
    // Separate into r, g, b substrings
    switch ([cString length]) {
        case 3:{
            range.length = 1;
            //r
            rString = [cString substringWithRange:range];
            rString = [rString stringByAppendingString:rString];
            //g
            range.location = 1;
            gString = [cString substringWithRange:range];
            gString = [gString stringByAppendingString:gString];
            //b
            range.location = 2;
            bString = [cString substringWithRange:range];
            bString = [bString stringByAppendingString:bString];
        }
            break;
        case 6:{
            range.length = 2;
            //r
            rString = [cString substringWithRange:range];
            //g
            range.location = 2;
            gString = [cString substringWithRange:range];
            //b
            range.location = 4;
            bString = [cString substringWithRange:range];
        }
            break;
        default:
            return [UIColor clearColor]; //break;
    }
    
    // Scan values
    NSUInteger r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
