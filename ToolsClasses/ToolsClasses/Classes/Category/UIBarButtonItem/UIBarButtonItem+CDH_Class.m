//
//  UIBarButtonItem+CDH_Class.m
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 DwightChan. All rights reserved.
//

#import "UIBarButtonItem+CDH_Class.h"

@implementation UIBarButtonItem (CDH_Class)

// 点中是为高亮状态
+ (instancetype)cdh_itemWithImage:(UIImage *)image withHightlightedImage:(UIImage *)HightlightImage withTarget:(id)target withAction:(SEL)action{
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
    [buttonView addSubview:button];
    
    // 添加 navigationItem.leftBarButtonItme (这个属性系统已经设置为强引用)
    return [[UIBarButtonItem alloc] initWithCustomView:buttonView];
}

// 点中时为选中状态
+ (instancetype)cdh_itemWithImage:(UIImage *)image withSelectedImage:(UIImage *)selectedImage withTarget:(id)target withAction:(SEL)action{
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
    [buttonView addSubview:button];
    // 添加 navigationItem.leftBarButtonItme (这个属性系统已经设置为强引用)
    return [[UIBarButtonItem alloc] initWithCustomView:buttonView];
}

@end
