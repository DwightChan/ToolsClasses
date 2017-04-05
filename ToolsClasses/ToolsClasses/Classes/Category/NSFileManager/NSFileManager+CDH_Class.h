//
//  NSFileManager+CDH_Class.h
//  KndCRMv2
//
//  Created by 陈德豪 on 2017/2/27.
//  Copyright © 2017年 KingNode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (CDH_Class)

#pragma mark - 拷贝文件
/// 文件拷贝, 将文件从路径 sourcePath 拷贝一份到路径 targetPath
+ (BOOL)cdh_copyFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath;
+ (BOOL)cdh_copyFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath error:(NSError **)errorPoint;

/// 文件拷贝, 将文件从路径 nowPathURL 拷贝一份到路径 targetPathURL
+ (BOOL)cdh_copyFileWithSourceURL:(NSURL *)sourceURL toTargetPathURL:(NSURL *)targetURL;
+ (BOOL)cdh_copyFileWithSourceURL:(NSURL *)sourceURL toTargetPathURL:(NSURL *)targetURL error:(NSError **)errorPoint;

#pragma mark - 移动文件
/// 文件剪切, 将文件从路径 SourcePath 剪切一份到路径 targetPath
+ (BOOL)cdh_moveFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath;
+ (BOOL)cdh_moveFileWithSourcePath:(NSString *)sourcePath toTargetPath:(NSString *)targetPath error:(NSError **)errorPoint;

/// 文件剪切, 将文件从路径 SourceURL 拷贝一份到路径 targetURL
+ (BOOL)cdh_moveFileWithSourceURL:(NSURL *)sourceURL toTargetURL:(NSURL *)targetURL;
+ (BOOL)cdh_moveFileWithSourceURL:(NSURL *)sourceURL toTargetURL:(NSURL *)targetURL error:(NSError **)errorPoint;

#pragma mark - 创建文件夹
/// 创建本地路径的文件夹
+ (BOOL)cdh_createFolderWithDirectionPath:(NSString *)createDirPath;
+ (BOOL)cdh_createFolderWithDirectionPath:(NSString *)createDirPath error:(NSError **)errorPoint;

/// 创建文件夹
+ (BOOL)cdh_createFolderWithDirectionURL:(NSURL *)createDirURL;
+ (BOOL)cdh_createFolderWithDirectionURL:(NSURL *)createDirURL error:(NSError **)errorPoint;

#pragma mark - 计算文件大小
/**
 *  获取传入的路径下所有文件的尺寸大小总和
 *  @param directoryPath 文件路径
 *  @return 返回文件尺寸大小
 */
+ (NSInteger)cdh_getFilesSizeOfDirectory:(NSString *)directoryPath;

#pragma mark - 删除文件夹
/**
 *  根据文件路径删除该路径下所有文件
 *  @param directoryPath 文件路径
 */
+ (BOOL)cdh_removeDirectoryPath:(NSString *)directoryPath;
@end
