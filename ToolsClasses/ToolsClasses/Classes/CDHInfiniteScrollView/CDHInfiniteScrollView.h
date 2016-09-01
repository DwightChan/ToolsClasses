//
//  CDHInfiniteScrollView.h
//  无限轮播器
//
//  Created by chendehao on 15/9/1.
//  Copyright © 2015年 CDHao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDHInfiniteScrollView : UIView
/** 需要显示的图片数据(要求里面存放UIImage对象) */
@property (nonatomic, strong) NSArray *images;
@end
