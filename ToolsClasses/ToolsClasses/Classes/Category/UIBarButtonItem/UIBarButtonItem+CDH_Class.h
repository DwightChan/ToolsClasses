//
//  UIBarButtonItem+CDH_Class.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CDH_Class)

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
+ (instancetype)cdh_itemWithImage:(UIImage *)image withHightlightedImage:(UIImage *)HightlightImage withTarget:(id)target withAction:(SEL)action;


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
+ (instancetype)cdh_itemWithImage:(UIImage *)image withSelectedImage:(UIImage *)selectedImage withTarget:(id)target withAction:(SEL)action;

@end
