//
//  UIImage+CDH_Class.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 KingNode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CDH_Class)


#pragma mark - 图片拉伸方法
/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param name
 * 
 *  @return 被拉伸后的图片
 */
+ (UIImage *)cdh_imageResizingWithNamed:(NSString *)name;

/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param image
 *
 *  @return 被拉伸后的图片
 */
+ (UIImage *)cdh_imageResizingWithImage:(UIImage *)image;

#pragma mark - 颜色图片
// 根据颜色生成一张尺寸为1*1的相同颜色图片
+ (UIImage *)cdh_imageWithColor:(UIColor *)color;
// 根据颜色生成一张尺寸 规定的尺寸 的相同颜色图片
+ (UIImage *)cdh_imageWithColor:(UIColor *)color withImageSize:(CGSize)imageSize;

#pragma mark - 返回原图(非渲染图)
/**
 *  提供一个不要渲染图片方法
 *
 *  @param imageName
 *
 *  @return 返回原图(没有被渲染)
 */
+ (UIImage *)cdh_imageOriginalWithName:(NSString *)imageName;

#pragma mark - 图片裁剪
/**
 *  将原图裁剪为圆角图片方法
 *
 *  @param imageName
 *
 *  @return 返回圆形图片
 */
+ (UIImage *)cdh_imageCircleWithImageName:(NSString *)imageName;


@end
