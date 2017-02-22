//
//  UIImage+CDH_Object.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 KingNode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CDH_Object)

#pragma mark - 图片拉伸方法
/// 返回一张可以随意拉伸不变形的图片
- (UIImage *)cdh_imageResizingWithImage;

#pragma mark - 返回原图(非渲染图)
/// 提供一个不要渲染图片方法,返回原图(没有被渲染)
- (UIImage *)cdh_imageOriginalWithName:(NSString *)imageName;

#pragma mark - 图片裁剪
/// 将原图裁剪为圆角图片方法
- (UIImage *)cdh_imageCircleWithImageName:(NSString *)imageName;


#pragma mark - 获得某个像素的颜色
/**
 *  获得某个像素的颜色
 *
 *  @param point 像素点的位置
 *  结合了 - (CGContextRef)ARGBBitmapContextFromImage:(CGImageRef) inImage; 方法
 */
- (UIColor *)pixelColorAtLocation:(CGPoint)point;


@end
