//
//  UIImage+CDHResizingImage.m
//  10-图片拉伸的问题
//
//  Created by 陈德豪 on 16/7/2.
//  Copyright © 2016年 chendehao. All rights reserved.
//

#import "UIImage+CDHResizingImage.h"

@implementation UIImage (CDHResizingImage)


+ (UIImage *)resizingImageWithImage:(UIImage *)image
{
    // 2.创建可拉伸的图片
    CGFloat imageW = image.size.width * 0.5;
    CGFloat imageH = image.size.height * 0.5;
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH, imageW, imageH, imageW)];
//    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH , imageW , imageH, imageW) resizingMode:UIImageResizingModeTile];
    
    return image;
}
@end
