//
//  UIImage+CDH_Class.m
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 KingNode. All rights reserved.
//

#import "UIImage+CDH_Class.h"

@implementation UIImage (CDH_Class)

#pragma mark - 图片拉伸方法
+ (UIImage *)cdh_imageResizingWithNamed:(NSString *)name {
    
    // 1.创建图片对象 
    UIImage *image = [UIImage imageNamed:name];
    return [UIImage cdh_imageResizingWithImage:image];
}
+ (UIImage *)cdh_imageResizingWithImage:(UIImage *)image {
    
    // 2.创建可拉伸的图片
    CGFloat imageW = image.size.width * 0.5;
    CGFloat imageH = image.size.height * 0.5;
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH, imageW, imageH, imageW)];
    //    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH , imageW , imageH, imageW) resizingMode:UIImageResizingModeTile];
    return image;
    
}

#pragma mark - 根据颜色生成图片
// 根据颜色生成一张尺寸为1*1的相同颜色图片
+ (UIImage *)cdh_imageWithColor:(UIColor *)color {
    // 描述矩形
    CGSize imageSize = CGSizeMake(1.0, 1.0);
    return [UIImage cdh_imageWithColor:color withImageSize:imageSize];
}
+ (UIImage *)cdh_imageWithColor:(UIColor *)color withImageSize:(CGSize)imageSize {
    // 描述矩形
    CGRect rect = CGRectMake(0.0, 0.0, imageSize.width * 1.0, imageSize.height * 1.0);
    
    // 开启位图上下文
    UIGraphicsBeginImageContext(rect.size);
    // 获取位图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 使用color演示填充上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 渲染上下文
    CGContextFillRect(context, rect);
    // 从上下文中获取图片
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    // 结束上下文
    UIGraphicsEndImageContext();
    
    return theImage;
}

#pragma mark - 返回原图(非渲染图)
+ (UIImage *)cdh_imageOriginalWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    // 返回一个没有渲染图片
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
#pragma mark - 图片裁剪
/// 圆形图像
+ (UIImage *)cdh_imageCircleWithImageName:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    // 裁剪图片: 图形上下文
    // 1.开启图形上下文
    // scale:比例因素 点:像素比例 0:自动识别比例因素
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    // 2.描述圆形裁剪路径
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    // 3.设置为裁剪区域
    [clipPath addClip];
    // 4.画图片  (CGPointZero 原图的大小)
    [image drawAtPoint:CGPointZero];
    // 5.取出图片
    image = UIGraphicsGetImageFromCurrentImageContext();
    // 6.关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
