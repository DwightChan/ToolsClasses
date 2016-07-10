//
//  NSString+CDHExtension.m
//  15-自定义不等高的cell-纯代码-frame01-
//
//  Created by 陈德豪 on 16/7/2.
//  Copyright © 2016年 chendehao. All rights reserved.
//

#import "NSString+CDHExtension.h"


@implementation NSString (CDHExtension)

// 文本的尺寸大小
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize{

    // 如果没有字体大小则直接默认是 14 号字体
    if (!font){
        font =[UIFont systemFontOfSize:14];
    }
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}
// 文本的尺寸大小
- (CGSize)sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth{
    
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
