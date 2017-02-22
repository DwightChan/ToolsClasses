//
//  UIView+CDH_Object.h
//  ToolsClasses
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 陈德豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CDH_Object)

// 分类不能添加成员属性
// @property如果在分类里面，只会自动生成get,set方法的声明，不会生成成员属性，和方法的实现

// 注意: 最好加上前缀, 避免其他人也创建相同的分类
@property (nonatomic, assign) CGFloat cdh_x;
@property (nonatomic, assign) CGFloat cdh_y;
@property (nonatomic, assign) CGFloat cdh_width;
@property (nonatomic, assign) CGFloat cdh_height;
@property (nonatomic, assign) CGFloat cdh_centerX;
@property (nonatomic, assign) CGFloat cdh_centerY;

@end
