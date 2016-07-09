//
//  UIBarButtonItem+CDHItem.m
//  BuDeJie
//
//  Created by 陈德豪 on 16/7/9.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "UIBarButtonItem+CDHItem.h"

@implementation UIBarButtonItem (CDHItem)


// 点中是为高亮状态
+ (instancetype)itemWithImage:(UIImage *)image withHightlightedImage:(UIImage *)HightlightImage withTarget:(id)target withAction:(SEL)action{
    // 创建一个按钮, 并设置按钮中的图片
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:HightlightImage forState:UIControlStateHighlighted];
    
    // 大小尺寸自适应
    [button sizeToFit];
    // 添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 解决导航条按钮 点击范围过大的问题 注意: 这里写的是 bounds , 而不是 frame
    UIView *buttonView = [[UIView alloc]initWithFrame:button.bounds];
    
    // 添加 navigationItem.leftBarButtonItme (这个属性系统已经设置为强引用)
    return [[UIBarButtonItem alloc]initWithCustomView:buttonView];
}

// 点中时为选中状态
+ (instancetype)itemWithImage:(UIImage *)image withSelectedImage:(UIImage *)selectedImage withTarget:(id)target withAction:(SEL)action{
    // 创建一个按钮, 并设置按钮中的图片
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selectedImage forState:UIControlStateSelected];
    
    // 大小尺寸自适应
    [button sizeToFit];
    // 监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    // 解决导航条按钮 点击范围过大的问题 注意: 这里写的是 bounds , 而不是 frame
    UIView *buttonView = [[UIView alloc]initWithFrame:button.bounds];
    
    // 添加 navigationItem.leftBarButtonItme (这个属性系统已经设置为强引用)
    return [[UIBarButtonItem alloc]initWithCustomView:buttonView];
}

@end
