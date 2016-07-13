//
//  UIView+CDHFrame.h
//  BuDeJie
//
//  Created by 陈德豪 on 16/7/8.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CDHFrame)

// 分类不能添加成员属性
// @property如果在分类里面，只会自动生成get,set方法的声明，不会生成成员属性，和方法的实现

// 注意: 最好加上前缀, 避免其他人也创建相同的分类
@property (nonatomic, assign) CGFloat CDH_x;
@property (nonatomic, assign) CGFloat CDH_y;
@property (nonatomic, assign) CGFloat CDH_width;
@property (nonatomic, assign) CGFloat CDH_height;
@property (nonatomic, assign) CGFloat CDH_centerX;
@property (nonatomic, assign) CGFloat CDH_centerY;

@end
