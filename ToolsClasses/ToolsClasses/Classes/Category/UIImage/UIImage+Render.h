//
//  UIImage+Render.h
//  ToolsClasses
//
//  Created by 陈德豪 on 16/7/8.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Render)

/**
 *  图片不被渲染方法
 *
 *  @param imageName 需要不被渲染的图片
 *
 *  @return 返回没有被渲染的图片
 */
+ (UIImage *)imageWithOriginal:(UIImage *)image;


/**
 *  将原图裁剪为圆角图片
 *
 *  @return 返回一个圆形图片
 */
- (UIImage *)circleImage;

@end
