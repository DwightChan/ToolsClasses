//
//  UIImage+Render.m
//  ToolsClasses
//
//  Created by 陈德豪 on 16/7/8.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

+ (UIImage *)imageWithOriginal:(UIImage *)image
{
    // 返回一个没有渲染图片
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
