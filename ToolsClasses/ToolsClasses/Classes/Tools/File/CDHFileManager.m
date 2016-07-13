//
//  CDHFileManager.m
//  BuDeJie
//
//  Created by chendehao on 16/7/13.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "CDHFileManager.h"

@implementation CDHFileManager

// 根据路径可以获得该路径下所有文件尺寸大小总和
+ (NSInteger)getFilesSizeOfDirectory:(NSString *)directoryPath{
    // 获取文件夹中所有文件路径, 然后累加 == 文件夹的尺寸大小
    
    // 获取问价管理者
    NSFileManager *manager = [NSFileManager defaultManager];
    
    // 传输路径不是文件夹或者不存在则抛异常
    [self isExceptionErrorWithFileManager:manager WithDirectoryPath:directoryPath];


    // 获取文件夹下所有文件
    NSArray *subPaths = [manager subpathsAtPath:directoryPath];
    
    NSInteger totalSize = 0 ;
    
    for (NSString *path in subPaths) {
        // 拼接文件全路径
        NSString *filePath = [directoryPath stringByAppendingPathComponent:path];
        
        // 排除文件夹和 ".DS"文件
        BOOL isDirectory;
        BOOL isExist = [manager fileExistsAtPath:filePath isDirectory:&isDirectory];
        if (!isExist || isDirectory) continue;
        // 忽略隐藏文件
        if ([filePath containsString:@".DS"]) {
            continue;
        }
        
        // 指定路径获这个路径的属性
        // attributesOfItemAtPath: 只能获取文件属性 , 不能获取文件夹属性, 所以只能一个一个文件去计算
        NSDictionary *attr = [manager attributesOfItemAtPath:filePath error:nil];
        NSInteger size = [attr fileSize];
        
        // 累加文件大小
        totalSize += size;
    }
    return totalSize;
}

// 根据传入路径参数, 删除该路径下所有文件
+ (void)removeDirectoryPath:(NSString *)directoryPath{
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    // 传输路径不是文件夹或者不存在则抛异常
    [self isExceptionErrorWithFileManager:manager WithDirectoryPath:directoryPath];

    NSArray *subPaths = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:directoryPath error:nil];
    
    for (NSString *subPath in subPaths) {
        // 拼接路径
        NSString *filePath = [directoryPath stringByAppendingPathComponent:subPath];
        
        // 删除文件
        [[NSFileManager defaultManager] removeItemAtPath:filePath error:nil];
    }
}

// 条件编译传参, 不是路径则抛异常
+ (void)isExceptionErrorWithFileManager:(NSFileManager *)manager WithDirectoryPath:(NSString *)directoryPath{
#ifdef DEBUG // 调试阶段
    BOOL isDirectory;
    BOOL isExist = [manager fileExistsAtPath: directoryPath isDirectory:&isDirectory];
    if (!isExist || !isDirectory) {
        
        
        // 文件传输出错抛出异常
        NSException *exception = [NSException exceptionWithName:@"filePathError" reason:@"传输路径出错, 必须是文件夹路径" userInfo: nil];
        
        [exception raise];
    }
#else
#endif
}












@end
