//
//  NSString+CDH_Object.h
//  ToolsClasses
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (CDH_Object)


#pragma mark - 根据名称找到图片并做拉伸
/// 返回一张可以随意拉伸不变形的图片
- (UIImage *)cdh_imageResizingWithNamed;



#pragma mark -  计算字符串的尺寸
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体 可以传 nil 也可以直接传一个 数值比如果 14
 */
- (CGSize)cdh_sizeWithMyFont:(UIFont *)font;
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体 可以传 nil 也可以直接传一个 数值比如果 14
 *  @param maxSize 最大尺寸
 */
- (CGSize)cdh_sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体大小
 *  @param maxWith 最大宽度
 *
 *  @return 文本尺寸大小
 */
- (CGSize)cdh_sizeWithFont:(UIFont *)font maxWidth:(CGFloat)maxWidth;

@end
