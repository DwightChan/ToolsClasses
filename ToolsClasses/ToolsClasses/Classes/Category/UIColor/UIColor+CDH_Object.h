//
//  UIColor+CDH_Object.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CDH_Object)

#pragma mark - 根据颜色生成图片
/// 根据颜色生成一张尺寸为1*1的相同颜色图片
- (UIImage *)cdh_colorImage;
/// 根据颜色生成一张尺寸 规定的尺寸 的相同颜色图片
- (UIImage *)cdh_colorImageWithSize:(CGSize)size;

@end
