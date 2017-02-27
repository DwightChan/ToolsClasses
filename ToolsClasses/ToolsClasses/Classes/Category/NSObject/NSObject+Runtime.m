//
//  Runtime.m
//  KndCRMv2
//
//  Created by ZQ on 6/24/16.
//  Copyright © 2016 KingNode. All rights reserved.
//

#import "NSObject+Runtime.h"
#import <objc/runtime.h>

@implementation NSObject (Runtime)

/* 获取对象的所有属性和属性内容 */
- (NSDictionary *)getAllPropertiesAndVaules{
    //json 支持的类型
    NSArray *validProperties = @[
                                 @"NSArray",@"NSMutableArray",
                                 @"NSString",@"NSMutableString",
                                 @"NSDictionary",@"NSMutableDictionary",
                                 @"NSData",@"NSMutableData",
                                 @"NSSet",@"NSMutableSet",
                                 @"NSNumber",
                                 @"NSDate"];
    
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties =class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++)
    {
        objc_property_t property = properties[i];
        const char* char_f =property_getName(property);
        
        /* 移除不能写入 json 的属性 ---------------------------------------------------------
         T@"MsgFrame",&,N,V_frameInfo       MsgFrame 类型，不可写入 json
         Tc,N,V_m_historyMSG                        BOOL 型，可以
         Ti,N,V_msg_indexID                         数值型，可以
         T@"NSString",&,N,V_msg_cellTime            NSString 类型，可以
         --------------------------------------------------------------------------------*/
        const char * char_a = property_getAttributes(property);
        NSString *attribute = [NSString stringWithUTF8String:char_a];
        if ([attribute rangeOfString:@"@"].location != NSNotFound) {
            NSArray *array = [attribute componentsSeparatedByString:@"\""];
            NSString *propertyClassName = array[1];
            if (![validProperties containsObject:propertyClassName]) {
                continue;
            }
        }
        
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}
/* 获取对象的所有属性 */
- (NSArray *)getAllProperties{
    u_int count;
    
    objc_property_t *properties  =class_copyPropertyList([self class], &count);
    
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName =property_getName(properties[i]);
        [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
    }
    
    free(properties);
    
    return propertiesArray;
}
/* 获取对象的所有方法 */
-(void)getAllMethods{
    unsigned int mothCout_f =0;
    Method* mothList_f = class_copyMethodList([self class],&mothCout_f);
    for(int i=0;i<mothCout_f;i++)
    {
        Method temp_f = mothList_f[i];
//        IMP imp_f = method_getImplementation(temp_f);
//        SEL name_f = method_getName(temp_f);
        const char* name_s =sel_getName(method_getName(temp_f));
        int arguments = method_getNumberOfArguments(temp_f);
        const char* encoding =method_getTypeEncoding(temp_f);
        NSLog(@"方法名：%@,参数个数：%d,编码方式：%@",[NSString stringWithUTF8String:name_s],
              arguments,
              [NSString stringWithUTF8String:encoding]);
    }
    free(mothList_f);
}

@end
