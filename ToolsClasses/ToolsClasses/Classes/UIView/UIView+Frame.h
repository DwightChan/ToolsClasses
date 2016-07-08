//
//  UIView+Frame.h
//
//
//  Created by chendehao on 16-7-3.
//  Copyright (c) 2015年 chendehao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
// 分类不能添加成员属性
// @property如果在分类里面，只会自动生成get,set方法的声明，不会生成成员属性，和方法的实现

// 注意: 最好加上前缀, 避免其他人也创建相同的分类
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;


@end
