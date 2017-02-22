//
//  UIColor+CDH_Object.m
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import "UIColor+CDH_Object.h"

@implementation UIColor (CDH_Object)

#pragma mark - 根据颜色生成图片
// 根据颜色生成一张尺寸为1*1的相同颜色图片
- (UIImage *)cdh_colorImage {
    // 描述矩形
    CGSize size = CGSizeMake(1.0, 1.0);
    return [self cdh_colorImageWithSize:size];
}
- (UIImage *)cdh_colorImageWithSize:(CGSize)size {
    // 描述矩形
    CGRect rect = CGRectMake(0.0, 0.0, size.width * 1.0, size.height * 1.0);
    // 开启位图上下文
    UIGraphicsBeginImageContext(rect.size);
    // 获取位图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [self CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    // 从上下文中获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 结束上下文
    UIGraphicsEndImageContext();
    
    return image;
}


@end
