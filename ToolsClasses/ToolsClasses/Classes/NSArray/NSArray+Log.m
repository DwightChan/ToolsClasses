//
//  NSArray+Log.m
//  项目:....
//
//  Created by 陈德豪 on 16/6/27.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import <Foundation/Foundation.h>

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{

    NSMutableString *string = [NSMutableString string];
    
    //该方法控制字典的输出内容, 如果重写了这个方法, 整个项目中所有字典的打印输出都是这样输出
    //return @"我是一个字典";
    
    //拼接字符串,控制器输出的格式和内容
    [string appendString:@"[\n"];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [string appendFormat:@"%@",obj];
    }];
    
    [string appendString:@"]"];
    
    // 删除最后一个逗号
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    return string;
}

@end
