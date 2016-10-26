//
//  UIImageView+CDHDowdload.h
//  BuDeJie
//
//  Created by chendehao on 16/7/21.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"


@interface UIImageView (CDHDowdload)
/**
 *  设置 imagView 显示的图片
 *
 *  @param originalImageURL  原图 URL
 *  @param thumbnailImageURL 缩略图 URL
 *  @param placeholderImage  占位图片
 *  @param conpletedBlock    获取到图片之后会调用 block
 */
- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL placeholderImage:(UIImage *)placeholderImage completed:(SDWebImageCompletionBlock)completedBlock;

/**
 *  设置 imagView 显示的图片
 *
 *  @param originalImageURL  原图 URL
 *  @param thumbnailImageURL 缩略图 URL
 *  @param placeholderImage  占位图片
 */
- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL placeholderImage:(UIImage *)placeholderImage;

/**
 *  设置 imagView 显示的图片
 *
 *  @param originalImageURL  原图 URL
 *  @param thumbnailImageURL 缩略图 URL
 */
- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL;

/**
 *  设置 imagView 显示的图片
 *
 *  @param originalImageURL  原图 URL
 *  @param thumbnailImageURL 缩略图 URL
 *  @param conpletedBlock    获取到图片之后会调用 block
 */
- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL completed:(SDWebImageCompletionBlock)completedBlock;
@end
