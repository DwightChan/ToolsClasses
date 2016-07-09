//
//  UIBarButtonItem+CDHItem.h
//  BuDeJie
//
//  Created by 陈德豪 on 16/7/9.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CDHItem)

/**
 *  设置导航条左右两边的按钮 (点击高亮状态)
 *
 *  @param image           常态图片
 *  @param HightlightImage 高亮状态图片
 *  @param target          监听者
 *  @param action          监听事件调用的方法
 *
 *  @return 返回 UIBarButtonItem
 */
+ (instancetype)itemWithImage:(UIImage *)image withHightlightedImage:(UIImage *)HightlightImage withTarget:(id)target withAction:(SEL)action;


/**
 *  设置导航条左右两边的按钮 (点击是为选中状态)
 *
 *  @param image           常态图片
 *  @param SelectedImage   选中状态图片
 *  @param target          监听者
 *  @param action          监听事件调用的方法
 *
 *  @return 返回 UIBarButtonItem
 */
+ (instancetype)itemWithImage:(UIImage *)image withSelectedImage:(UIImage *)selectedImage withTarget:(id)target withAction:(SEL)action;

@end
