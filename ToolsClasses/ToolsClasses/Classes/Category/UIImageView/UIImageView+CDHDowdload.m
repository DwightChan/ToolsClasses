//
//  UIImageView+CDHDowdload.m
//  BuDeJie
//
//  Created by chendehao on 16/7/21.
//  Copyright © 2016年 陈德豪. All rights reserved.
//

#import "UIImageView+CDHDowdload.h"
#import "UIImageView+WebCache.h"
#import <AFNetworking/AFNetworking.h>

/*
 sd_setImageWithURL:placeholderImage:方法的执行步骤
 1.取消当前imageView之前关联的请求
 2.设置占位图片到当前imageView上面
 3.如果缓存中有对应的图片，那么就显示到当前imageView上面
 4.如果缓存中没有对应的图片，发送请求给服务器下载图片
 */

@implementation UIImageView (CDHDowdload)

- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL placeholderImage:(UIImage *)placeholderImage completed:(SDWebImageCompletionBlock)completedBlock{

    
    // 从内存\沙盒缓存中获得原图
    UIImage *originalImage = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:originalImageURL];
    if (originalImage) { // 如果内存\沙盒缓存有原图，那么就直接显示原图（不管现在是什么网络状态）
        [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL] completed:completedBlock];
    } else { // 内存\沙盒缓存没有原图
        AFNetworkReachabilityManager *mgr = [AFNetworkReachabilityManager sharedManager];
        if (mgr.isReachableViaWiFi) { // 在使用Wifi, 下载原图
            [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL] placeholderImage:placeholderImage completed:completedBlock];
        } else if (mgr.isReachableViaWWAN) { // 在使用手机自带网络
            //     用户的配置项假设利用NSUserDefaults存储到了沙盒中
            //    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"alwaysDownloadOriginalImage"];
            //    [[NSUserDefaults standardUserDefaults] synchronize];
#warning 从沙盒中读取用户的配置项：在3G\4G环境是否仍然下载原图
            BOOL alwaysDownloadOriginalImage = [[NSUserDefaults standardUserDefaults] boolForKey:@"alwaysDownloadOriginalImage"];
            if (alwaysDownloadOriginalImage) { // 下载原图
                [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL] placeholderImage:placeholderImage completed:completedBlock];
            } else { // 下载小图
                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL] placeholderImage:placeholderImage completed:completedBlock];
            }
        } else { // 没有网络
            UIImage *thumbnailImage = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:thumbnailImageURL];
            if (thumbnailImage) { // 内存\沙盒缓存中有小图
                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL] completed:completedBlock];
            } else {
                [self sd_setImageWithURL:nil placeholderImage:placeholderImage completed:completedBlock];
            }
        }
    }

    
//    // 从沙盒或内存或者图片
//    UIImage *image = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:originalImageURL];
//    if (image) {
//        // 图片下载 也是先到内存/ 沙盒中找, 找不到才会下载
//        [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL]placeholderImage:placeholderImage completed:completedBlock];
//    } else { // 内存和沙盒都没有则下载
//        // 监听网络状态
//        AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
//        
//        if (manager.isReachableViaWiFi) {
//            [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL]placeholderImage:placeholderImage completed:completedBlock];
//        } else if(manager.isReachableViaWWAN){// 手机流量先找有没有小图, 没有则下载
//            //     用户的配置项假设利用NSUserDefaults存储到了沙盒中
//            //    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"alwaysDownloadOriginalImage"];
//            //    [[NSUserDefaults standardUserDefaults] synchronize];
//#warning 从沙盒中读取用户的配置项：在3G\4G环境是否仍然下载原图
//            BOOL alwaysDownloadOriginal = [[NSUserDefaults standardUserDefaults] boolForKey:@"alwaysDownloadOriginalImage"];
//            if (alwaysDownloadOriginal) {
//                [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL] placeholderImage:placeholderImage completed:completedBlock];
//            }else{ // 下载小图
//                // 内存中没有小图, 则下载小图
//                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL]placeholderImage:placeholderImage completed:completedBlock];
//                
//            }
//        }else{ // 没有网络
//            
//            self.image = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:thumbnailImageURL];
//            if (self.image) { // 内存\沙盒缓存中有小图
//                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL] completed:completedBlock];
//            }else{
//                [self sd_setImageWithURL:nil completed:completedBlock];
//            }
//        }
//    }

    
    // 有问题的, 图片一开始会被挤压, 重回的时候才会
//    // 从沙盒或内存或者图片
//    UIImage *image = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:originalImageURL];
//    if (image) {
//        // 图片下载 也是先到内存/ 沙盒中找, 找不到才会下载
//        [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL]placeholderImage:placeholderImage completed:completedBlock];
//    } else { // 内存和沙盒都没有则下载
//        // 监听网络状态
//        AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
//
//        if (manager.isReachableViaWiFi) {
//            [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL]placeholderImage:placeholderImage completed:completedBlock];
//        } else if(manager.isReachableViaWWAN){// 手机流量先找有没有小图, 没有则下载
//            //     用户的配置项假设利用NSUserDefaults存储到了沙盒中
//            //    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"alwaysDownloadOriginalImage"];
//            //    [[NSUserDefaults standardUserDefaults] synchronize];
//#warning 从沙盒中读取用户的配置项：在3G\4G环境是否仍然下载原图
//            BOOL alwaysDownloadOriginal = [[NSUserDefaults standardUserDefaults] boolForKey:@"alwaysDownloadOriginalImage"];
//            if (alwaysDownloadOriginal) {
//                [self sd_setImageWithURL:[NSURL URLWithString:originalImageURL] placeholderImage:placeholderImage completed:completedBlock];
//            }else{ // 下载小图
//                // 内存中没有小图, 则下载小图
//                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL]placeholderImage:placeholderImage completed:completedBlock];
//
//            }
//        }else{ // 没有网络
//            
//            self.image = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:thumbnailImageURL];
//            if (self.image) { // 内存\沙盒缓存中有小图
//                [self sd_setImageWithURL:[NSURL URLWithString:thumbnailImageURL] completed:completedBlock];
//            }else{
//                [self sd_setImageWithURL:nil completed:completedBlock];
//            }
//        }
//    }

}

- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL placeholderImage:(UIImage *)placeholderImage{
    
    [self cdh_setImageWithOriginalImageURL:originalImageURL thumbnailImageURL:thumbnailImageURL placeholderImage:placeholderImage completed:nil];
}

- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL{
    
    [self cdh_setImageWithOriginalImageURL:originalImageURL thumbnailImageURL:thumbnailImageURL placeholderImage:nil completed:nil];
}

- (void)cdh_setImageWithOriginalImageURL:(NSString *)originalImageURL thumbnailImageURL:(NSString *)thumbnailImageURL completed:(SDWebImageCompletionBlock)completedBlock{
    
    [self cdh_setImageWithOriginalImageURL:originalImageURL thumbnailImageURL:thumbnailImageURL placeholderImage:nil completed:completedBlock];
}

@end
