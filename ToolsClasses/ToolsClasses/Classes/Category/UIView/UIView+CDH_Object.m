//
//  UIView+CDH_Object.m
//  ToolsClasses
//
//  Created by 陈德豪 on 2017/2/22.
//  Copyright © 2017年 陈德豪. All rights reserved.
//

#import "UIView+CDH_Object.h"

@implementation UIView (CDH_Object)


- (void)setCdh_x:(CGFloat)cdh_x{
    
    CGRect frame = self.frame;
    frame.origin.x = cdh_x;
    self.frame = frame;
}

- (CGFloat)cdh_x{
    
    return self.frame.origin.x;
}

- (void)setCdh_y:(CGFloat)cdh_y{
    
    CGRect frame = self.frame;
    frame.origin.y = cdh_y;
    self.frame = frame;
}

- (CGFloat)cdh_y{
    
    return self.frame.origin.y;
}

- (void)setCdh_width:(CGFloat)cdh_width{
    
    CGRect frame = self.frame;
    frame.size.width = cdh_width;
    self.frame = frame;
}

- (CGFloat)cdh_width{
    
    return self.frame.size.width;
}

- (void)setCdh_height:(CGFloat)cdh_height{
    
    CGRect frame = self.frame;
    frame.size.height = cdh_height;
    self.frame = frame;
}

- (CGFloat)cdh_height{
    
    return self.frame.size.height;
}

- (void)setCdh_centerX:(CGFloat)cdh_centerX{
    CGPoint center = self.center;
    center.x = cdh_centerX;
    self.center = center;
}
- (CGFloat)cdh_centerX{
    return self.center.x;
}

- (void)setCdh_centerY:(CGFloat)cdh_centerY{
    CGPoint center = self.center;
    center.y = cdh_centerY;
    self.center = center;
}
- (CGFloat)cdh_centerY{
    return self.center.y;
}

@end
