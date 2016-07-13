//
//  UIView+CDHFrame.m
//  BuDeJie
//
//  Created by 陈德豪 on 16/7/8.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "UIView+CDHFrame.h"

@implementation UIView (CDHFrame)

- (void)setCDH_x:(CGFloat)CDH_x{
    
    CGRect frame = self.frame;
    frame.origin.x = CDH_x;
    self.frame = frame;
}

- (CGFloat)CDH_x{
    
    return self.frame.origin.x;
}

- (void)setCDH_y:(CGFloat)CDH_y{
    
    CGRect frame = self.frame;
    frame.origin.y = CDH_y;
    self.frame = frame;
}

- (CGFloat)CDH_y{
    
    return self.frame.origin.y;
}

- (void)setCDH_width:(CGFloat)CDH_width{
    
    CGRect frame = self.frame;
    frame.size.width = CDH_width;
    self.frame = frame;
}

- (CGFloat)CDH_width{
    
    return self.frame.size.width;
}

- (void)setCDH_height:(CGFloat)CDH_height{

    CGRect frame = self.frame;
    frame.size.height = CDH_height;
    self.frame = frame;
}

- (CGFloat)CDH_height{
    
    return self.frame.size.height;
}

- (void)setCDH_centerX:(CGFloat)CDH_centerX{
    CGPoint center = self.center;
    center.x = CDH_centerX;
    self.center = center;
}
- (CGFloat)CDH_centerX{
    return self.center.x;
}

- (void)setCDH_centerY:(CGFloat)CDH_centerY{
    CGPoint center = self.center;
    center.y = CDH_centerY;
    self.center = center;
}
- (CGFloat)CDH_centerY{
    return self.center.y;
}

@end
