//
//  UIView+CDH_Class.m
//  ToolsClasses
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 陈德豪. All rights reserved.
//

#import "UIView+CDH_Class.h"

@implementation UIView (CDH_Class)

+ (instancetype)cdh_viewFromXib{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

@end
