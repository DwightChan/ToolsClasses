//
//  UIImage+CDHCircleImage.h
//  ToolsClasses
//
//  Created by chendehao on 16/7/26.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CDHCircleImage)


/**
 *  将原图裁剪为圆角图片
 *
 *  @return 返回一个圆形图片
 */
- (UIImage *)cdh_circleImage;

/**
 *  将原图裁剪为指定大小的圆角图片
 *
 *  @return 放回一个指定大小的圆形图片
 */
- (UIImage *)cdh_circleImageWithSize:(CGSize)size;



@end
