//
//  UIImage+Render.h
//  ToolsClasses
//
//  Created by 陈德豪 on 16/7/8.
//  Copyright © 2016年 陈德豪. All rights reserved.
//  图片裁剪的

#import <UIKit/UIKit.h>

@interface UIImage (Render)

/**
 *  图片不被渲染方法
 *
 *  @param imageName 需要不被渲染的图片
 *
 *  @return 返回没有被渲染的图片
 */
+ (UIImage *)cdh_imageWithOriginal:(UIImage *)image;


/**
 *  将原图裁剪为圆角图片
 *
 *  @return 返回一个圆形图片
 */
- (UIImage *)cdh_circleImage;

/**
 *  将原图裁剪为指定大小的圆角图片
 *
 *  @return 放回一个指定大小的圆形图片
 */
- (UIImage *)cdh_circleImageWithSize:(CGSize)size;

@end
