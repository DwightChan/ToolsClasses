//
//  UIImage+CDHResizingImage.h
//  10-图片拉伸的问题
//
//  Created by 陈德豪 on 16/7/2.
//  Copyright © 2016年 chendehao. All rights reserved.
//  

#import <UIKit/UIKit.h>

@interface UIImage (CDHResizingImage)

/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param imageName
 *
 *  @return 被拉伸后的图片
 */
+ (UIImage *)resizingImageWithNamed:(NSString *)imageName;

/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param image
 *
 *  @return 被拉伸后的图片
 */
+ (UIImage *)resizingImageWithImage:(UIImage *)image;
@end
