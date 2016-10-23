//
//  PAProgressView.h
//  PARockPay
//
//  Created by chendehao on 15/5/14
//  Copyright (c) 2014年 dehao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    PAProgressViewTypeString,                         //只有文字
    PAProgressViewTypeActivityIndicatorViewAndString, //文字+activityIndicatorView
    PAProgressViewTypeCustom,
    
}PAProgressViewType;

@class PAProgressView;

@protocol PAProgressViewDelegate <NSObject>

@optional

- (void)PAProgressViewDismiss:(PAProgressView *)PAProgressView;

@end

@interface PAProgressView : UIView

@property (nonatomic, assign) id<PAProgressViewDelegate>    delegate;
@property (nonatomic, assign) PAProgressViewType            progressType;
@property (nonatomic, copy) NSString                        *contentString;


+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string;

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
                      delegate:(id)delegate;

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type;

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type
                      delegate:(id)delegate;

+ (void)hideForView:(UIView *)view;

- (void)showInView:(UIView *)view;

- (void)hide;

@end
