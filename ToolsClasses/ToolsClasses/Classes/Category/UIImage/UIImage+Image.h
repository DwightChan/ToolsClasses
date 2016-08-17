//
//  UIImage+Image.h
//  
//
//  Created by cdhao on 15/7/6.
//  Copyright (c) 2015年 cdhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)


/**
 *  根据颜色生成一张尺寸为1*1的相同颜色图片
 *
 *  @param color 需要生成的图片颜色
 *
 *  @return 返回一张图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;



@end
