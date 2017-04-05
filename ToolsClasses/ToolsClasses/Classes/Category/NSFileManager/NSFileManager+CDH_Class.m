//
//  NSFileManager+CDH_Class.m
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/27.
//  Copyright © 2017年 KingNode. All rights reserved.
//

#import "NSFileManager+CDH_Class.h"

@implementation NSFileManager (CDH_Class)

#pragma mark - 拷贝文件
/// 文件拷贝, 将文件从路径 sourcePath 拷贝一份到路径 targetPath
+ (BOOL)cdh_copyFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionPath:targetPath]; // 创建目标文件夹
    NSString * finalLocation = [targetPath stringByAppendingPathComponent:[sourcePath lastPathComponent]];
    if (![[NSFileManager defaultManager] fileExistsAtPath:finalLocation]) {
        retVal = [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:finalLocation error:NULL];
    }
    return retVal;
}
+ (BOOL)cdh_copyFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath error:(NSError **)errorPoint{
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionPath:targetPath]; // 创建目标文件夹
    NSString * finalLocation = [targetPath stringByAppendingPathComponent:[sourcePath lastPathComponent]];
    if (![[NSFileManager defaultManager] fileExistsAtPath:finalLocation]) {
        retVal = [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:finalLocation error:errorPoint];
    }
    return retVal;
}
/// 文件拷贝, 将文件从路径 nowPathURL 拷贝一份到路径 targetPathURL
+ (BOOL)cdh_copyFileWithSourceURL:(NSURL *)sourceURL toTargetPathURL:(NSURL *)targetURL {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionURL:targetURL];  // 创建目标文件夹
    NSURL * finalLocation = [targetURL URLByAppendingPathComponent:[sourceURL lastPathComponent]];
    if (![[NSFileManager defaultManager] isUbiquitousItemAtURL:finalLocation]) {
        retVal = [[NSFileManager defaultManager] copyItemAtURL:sourceURL toURL:finalLocation error:NULL];
    }
    return retVal;
}
+ (BOOL)cdh_copyFileWithSourceURL:(NSURL *)sourceURL toTargetPathURL:(NSURL *)targetURL error:(NSError **)errorPoint {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionURL:targetURL];  // 创建目标文件夹
    NSURL * finalLocation = [targetURL URLByAppendingPathComponent:[sourceURL lastPathComponent]];
    if (![[NSFileManager defaultManager] isUbiquitousItemAtURL:finalLocation]) {
        retVal = [[NSFileManager defaultManager] copyItemAtURL:sourceURL toURL:finalLocation error:errorPoint];
    }
    return retVal;
}

#pragma mark - 移动文件
/// 文件剪切, 将文件从路径 SourcePath 剪切一份到路径 targetPath
+ (BOOL)cdh_moveFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionPath:targetPath]; // 创建目标目录
    NSString * finalLocation = [targetPath stringByAppendingPathComponent:[sourcePath lastPathComponent]];
    if (![[NSFileManager defaultManager] fileExistsAtPath:finalLocation]) {
        retVal = [[NSFileManager defaultManager] moveItemAtPath:sourcePath toPath:targetPath error:NULL];
    }
    return retVal;
}
+ (BOOL)cdh_moveFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath error:(NSError *__autoreleasing *)errorPoint {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionPath:targetPath]; // 创建目标目录
    NSString * finalLocation = [targetPath stringByAppendingPathComponent:[sourcePath lastPathComponent]];
    if (![[NSFileManager defaultManager] fileExistsAtPath:finalLocation]) {
        retVal = [[NSFileManager defaultManager] moveItemAtPath:sourcePath toPath:targetPath error:errorPoint];
    }
    return retVal;
}

/// 文件剪切, 将文件从路径 SourceURL 拷贝一份到路径 targetURL
+ (BOOL)cdh_moveFileWithSourceURL:(NSURL *)sourceURL toTargetURL:(NSURL *)targetURL {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionURL:targetURL]; // 创建目标目录
    NSURL * finalLocation = [targetURL URLByAppendingPathComponent:[sourceURL lastPathComponent]];
    if (![[NSFileManager defaultManager] isUbiquitousItemAtURL:finalLocation]) {
        retVal = [[NSFileManager defaultManager] moveItemAtURL:sourceURL toURL:targetURL error:NULL];
    }
    return retVal;
}
+ (BOOL)cdh_moveFileWithSourceURL:(NSURL *)sourceURL toTargetURL:(NSURL *)targetURL error:(NSError *__autoreleasing *)errorPoint {
    BOOL retVal = YES; // If the file already exists, we'll return success…
    [self cdh_createFolderWithDirectionURL:targetURL]; // 创建目标目录
    NSURL * finalLocation = [targetURL URLByAppendingPathComponent:[sourceURL lastPathComponent]];
    if (![[NSFileManager defaultManager] isUbiquitousItemAtURL:finalLocation]) {
        retVal = [[NSFileManager defaultManager] moveItemAtURL:sourceURL toURL:targetURL error:errorPoint];
    }
    return retVal;
}

#pragma mark - 创建文件夹
/// 创建本地路径的文件夹
+ (BOOL)cdh_createFolderWithDirectionPath:(NSString *)createDirPath {
    BOOL retVal = YES;
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:createDirPath isDirectory:&isDir];
    if (!(isDir == YES && existed == YES)) {
        retVal = [fileManager createDirectoryAtPath:createDirPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return retVal;
}
+ (BOOL)cdh_createFolderWithDirectionPath:(NSString *)createDirPath error:(NSError *__autoreleasing *)errorPoint {
    BOOL retVal = YES;
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:createDirPath isDirectory:&isDir];
    if (!(isDir == YES && existed == YES)) {
        retVal = [fileManager createDirectoryAtPath:createDirPath withIntermediateDirectories:YES attributes:nil error:errorPoint];
    }
    return retVal;
}
/// 创建文件夹
+ (BOOL)cdh_createFolderWithDirectionURL:(NSURL *)createDirURL {
    BOOL retVal = YES;
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager isUbiquitousItemAtURL:createDirURL];//[fileManager fileExistsAtPath:createDirString isDirectory:&isDir];
    if (!(isDir == YES && existed == YES)) {
        retVal = [fileManager createDirectoryAtURL:createDirURL withIntermediateDirectories:YES attributes:nil error:NULL];
    }
    return retVal;
}
+ (BOOL)cdh_createFolderWithDirectionURL:(NSURL *)createDirURL error:(NSError *__autoreleasing *)errorPoint {
    BOOL retVal = YES;
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager isUbiquitousItemAtURL:createDirURL];//[fileManager fileExistsAtPath:createDirString isDirectory:&isDir];
    if (!(isDir == YES && existed == YES)) {
        retVal = [fileManager createDirectoryAtURL:createDirURL withIntermediateDirectories:YES attributes:nil error:errorPoint];
    }
    return retVal;
}

// 根据路径可以获得该路径下所有文件尺寸大小总和
+ (NSInteger)cdh_getFilesSizeOfDirectory:(NSString *)directoryPath{
    // 获取文件夹中所有文件路径, 然后累加 == 文件夹的尺寸大小
    
    // 获取问价管理者
    NSFileManager *manager = [NSFileManager defaultManager];
    
    // 传输路径不是文件夹或者不存在则抛异常
    [self cdh_isExceptionErrorWithFileManager:manager WithDirectoryPath:directoryPath];
    
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
+ (BOOL)cdh_removeDirectoryPath:(NSString *)directoryPath{
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    // 传输路径不是文件夹或者不存在则抛异常
    [self cdh_isExceptionErrorWithFileManager:manager WithDirectoryPath:directoryPath];
    
    NSArray *subPaths = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:directoryPath error:nil];
    
    for (NSString *subPath in subPaths) {
        // 拼接路径
        NSString *filePath = [directoryPath stringByAppendingPathComponent:subPath];
        
        // 删除文件
        [[NSFileManager defaultManager] removeItemAtPath:filePath error:nil];
    }
    return YES;
}

// 条件编译传参, 不是路径则抛异常
+ (void)cdh_isExceptionErrorWithFileManager:(NSFileManager *)manager WithDirectoryPath:(NSString *)directoryPath{
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
