//
//  CDHFileManager.h
//  BuDeJie
//
//  Created by chendehao on 16/7/13.
//  Copyright © 2016年 陈德豪. All rights reserved.
//  专门用来处理文件管理的工具类

#import <Foundation/Foundation.h>

@interface CDHFileManager : NSObject

/**
 *  获取传入的路径下所有文件的尺寸大小总和
 *
 *  @param directoryPath 文件路径
 *
 *  @return 返回文件尺寸大小
 */
+ (NSInteger)getFilesSizeOfDirectory:(NSString *)directoryPath;

/**
 *  根据文件路径删除该路径下所有文件
 *
 *  @param directoryPath 文件路径
 */
+ (void)removeDirectoryPath:(NSString *)directoryPath;

@end
