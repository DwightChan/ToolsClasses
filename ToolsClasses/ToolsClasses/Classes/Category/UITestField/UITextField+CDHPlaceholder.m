//
//  UITextField+CDHPlaceholder.m
//  BuDeJie
//
//  Created by chendehao on 16/7/14.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "UITextField+CDHPlaceholder.h"
#import <objc/message.h>

@implementation UITextField (CDHPlaceholder)

+ (void)load
{
    Method setPlaceholderMethod = class_getInstanceMethod(self, @selector(setPlaceholder:));
    Method setCDHPlaceholderMethod = class_getInstanceMethod(self, @selector(setCDH_Placeholder:));
    method_exchangeImplementations(setPlaceholderMethod, setCDHPlaceholderMethod);
}


// setPlaceholder : setCDH_Placeholder
// 设置占位文字,并且设置占位文字颜色
- (void)setCDH_Placeholder:(NSString *)placeholder
{
    // 设置占位文字
    [self setCDH_Placeholder:placeholder];
    
    // 设置占位文字颜色
    [self setPlaceholderColor:self.placeholderColor];
    
}

// 设置占位文字颜色
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    // 1.把占位文字颜色先保存
    objc_setAssociatedObject(self, @"placeholderColor", placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    // 2.等真正设置占位文字的时候,在去设置占位文字颜色
    
    // 获取占位文字控件
    UILabel *placeholderLabel = [self valueForKey:@"placeholderLabel"];
    
    // 拿到控件去设置颜色
    placeholderLabel.textColor = placeholderColor;
    
}

// 返回占位文字颜色
- (UIColor *)placeholderColor
{
    return objc_getAssociatedObject(self, @"placeholderColor");
}

@end
