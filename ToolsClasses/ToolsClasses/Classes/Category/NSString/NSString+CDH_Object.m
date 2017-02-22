//
//  NSString+CDH_Object.m
//  ToolsClasses
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import "NSString+CDH_Object.h"

@implementation NSString (CDH_Object)

#pragma mark - 根据名称找到图片并做拉伸
- (UIImage *)cdh_imageResizingWithNamed {

    // 1.创建图片对象
    UIImage *image = [UIImage imageNamed:self];
    // 2.创建可拉伸的图片
    CGFloat imageW = image.size.width * 0.5;
    CGFloat imageH = image.size.height * 0.5;
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH, imageW, imageH, imageW)];
    //    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH , imageW , imageH, imageW) resizingMode:UIImageResizingModeTile];
    return image;
}

#pragma mark -  计算字符串的尺寸
/// 计算字符串的尺寸大小
- (CGSize)cdh_sizeWithMyFont:(UIFont *)font {
    
    if ([self respondsToSelector:@selector(sizeWithAttributes:)])
    {
        NSDictionary* attribs = @{NSFontAttributeName:font};
        return ([self sizeWithAttributes:attribs]);
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    return ([self sizeWithFont:font]);
#pragma clang diagnostic pop
}

/// 文本的尺寸大小
- (CGSize)cdh_sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize{
    
    // 如果没有字体大小则直接默认是 14 号字体
    if (!font){
        font =[UIFont systemFontOfSize:14];
    }
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

/// 文本的尺寸大小
- (CGSize)cdh_sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth{
    
    // 如果没有字体大小则直接默认是 14 号字体
    if (!font){
        font =[UIFont systemFontOfSize:14];
    }
    // 计算文本的最大尺寸
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    NSDictionary *attrs = @{NSFontAttributeName : font};
    // 根据文本的内容计算出文本的真实尺寸
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
