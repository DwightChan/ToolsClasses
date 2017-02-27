//
//  Runtime.h
//  KndCRMv2
//
//  Created by ZQ on 6/24/16.
//  Copyright © 2016 KingNode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Runtime)

/* 获取对象的所有属性和属性内容 */
- (NSDictionary *)getAllPropertiesAndVaules;
/* 获取对象的所有属性 */
- (NSArray *)getAllProperties;
/* 获取对象的所有方法 */
-(void)getAllMethods;
@end
