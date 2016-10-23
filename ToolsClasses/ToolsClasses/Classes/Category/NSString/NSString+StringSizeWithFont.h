//
//  NSString+StringSizeWithFont.h
//  15-自定义不等高的cell-纯代码-frame01-
//
//  Created by 陈德豪 on 16/7/2.
//  Copyright © 2016年 chendehao. All rights reserved.
//  用于计算字符串的长度的 size 分类

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (StringSizeWithFont)

/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体 可以传 nil 也可以直接传一个 数值比如果 14
 */
- (CGSize)sizeWithMyFont:(UIFont *)font;
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体 可以传 nil 也可以直接传一个 数值比如果 14
 *  @param maxSize 最大尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体大小
 *  @param maxWith 最大宽度
 *
 *  @return 文本尺寸大小
 */
- (CGSize)sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth;
@end
