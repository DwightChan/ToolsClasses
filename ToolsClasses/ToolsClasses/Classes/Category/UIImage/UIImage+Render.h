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


@end
