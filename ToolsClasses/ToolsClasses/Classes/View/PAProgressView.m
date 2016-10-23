//
//  PAProgressView.m
//  PARockPay
//
//  Created by Chen Jacky on 12-12-31.
//  Copyright (c) 2014年 xyh. All rights reserved.
//

#import "PAProgressView.h"

#import <QuartzCore/QuartzCore.h>

#define kPAProgressView_ContentStringFont       [UIFont systemFontOfSize:15]

#define kPAProgressView_RectangleViewAlpha      0.8f

#define kPAProgressView_ShowAnimateWithDuration 0.2f  //动画持续时间

#define kPAProgressView_AnimateDuration         1.8f  //显示时间

@interface PAProgressView()


@property (nonatomic , assign) PAProgressViewType nCurrentProgressType;
@property (nonatomic , weak) UIView *pRectangleView;
@property (nonatomic ,weak) UILabel *pContent;
@property (nonatomic ,weak) UIActivityIndicatorView *pLoadingView;
@property (nonatomic, strong) NSTimer *mpTimer;
@property (nonatomic, assign) NSUInteger nTimerCount;


+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type
                      delegate:(id)delegate
                      autoHide:(BOOL)autoHide;

- (void)show;
- (void)hide;

- (void)initTimer;
- (void)timerRelease;
- (void)timerMethods;

- (void)show:(UIView *)view contentString:(NSString *)string withProgressViewType:(PAProgressViewType)type;
- (void)show:(UIView *)view contentString:(NSString *)string withProgressViewType:(PAProgressViewType)type delegate:(id)delegate autoHide:(BOOL)autoHide;

- (void)updateProgressType:(PAProgressViewType)type;
- (void)updateContentString:(NSString *)contentString;

- (void)refreshFrameWithString:(NSString *)contentString type:(PAProgressViewType)type showView:(UIView*)view;

@end

@implementation PAProgressView



#pragma mark - Public Class methods
+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
{
    return [self showInView:view
              contentString:string
       withProgressViewType:PAProgressViewTypeString
                   delegate:nil
                   autoHide:YES];
}

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
                      delegate:(id)delegate
{
    return [self showInView:view
              contentString:string
       withProgressViewType:PAProgressViewTypeString
                   delegate:delegate
                   autoHide:YES];
}

#pragma mark -

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type
{
    BOOL bAutoHide = NO;
    if (type == PAProgressViewTypeString)
    {
        bAutoHide = YES;
    }
    return [self showInView:view
              contentString:string
       withProgressViewType:type
                   delegate:nil
                   autoHide:bAutoHide];
}

+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type
                      delegate:(id)delegate
{
    BOOL bAutoHide = NO;
    if (type == PAProgressViewTypeString)
    {
        bAutoHide = YES;
    }
    return [self showInView:view
              contentString:string
       withProgressViewType:type
                   delegate:delegate
                   autoHide:bAutoHide];
}

#pragma mark -

+ (void)hideForView:(UIView *)view
{
    UIView *viewToRemove = nil;
    for (UIView *v in [view subviews])
    {
        if ([v isKindOfClass:[PAProgressView class]])
        {
            viewToRemove = v;
            
            PAProgressView *pProgressView = (PAProgressView *)viewToRemove;
            [pProgressView hide];
        }
    }
}

#pragma mark - Private Class methods
+ (PAProgressView *)showInView:(UIView *)view
                 contentString:(NSString *)string
          withProgressViewType:(PAProgressViewType)type
                      delegate:(id)delegate
                      autoHide:(BOOL)autoHide
{
    PAProgressView *pProgressView = [[PAProgressView alloc] init];
    
    [pProgressView show:view
          contentString:string
   withProgressViewType:type
               delegate:delegate
               autoHide:autoHide];
    
    return pProgressView;
}

#pragma mark - init

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        [self setFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
        
        _pRectangleView = [[UIView alloc] initWithFrame:CGRectMake(60, kScreenHeight * 0.5f, 180, 45)];
        
        [_pRectangleView.layer setBackgroundColor:[[UIColor colorWithRed:0 green:0 blue:0 alpha:kPAProgressView_RectangleViewAlpha] CGColor]];
        [_pRectangleView.layer setCornerRadius:10];
        
        [self addSubview:_pRectangleView];
//        [m_pRectangleView release];
        
        _pLoadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        [_pLoadingView setFrame:CGRectMake(0, 13, 20, 20)];
        [_pLoadingView setHidden:YES];
        [_pRectangleView addSubview:_pLoadingView];
//        [m_pLoadingView release];
        
        _pContent = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, _pRectangleView.frame.size.width, _pRectangleView.frame.size.height)];
        [_pContent setBackgroundColor:[UIColor clearColor]];
        [_pContent setTextColor:[UIColor whiteColor]];
        [_pContent setFont:kPAProgressView_ContentStringFont];
        [_pContent setTextAlignment:NSTextAlignmentCenter];
        [_pRectangleView addSubview:_pContent];
//        [m_pContent release];
        
        
         
        
    }
    return self;
}

- (void)initTimer
{
    NSDate *date = [NSDate date];
    _mpTimer = [[NSTimer alloc] initWithFireDate:date
                                        interval:1
                                          target:self
                                        selector:@selector(timerMethods)
                                        userInfo:nil
                                         repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:_mpTimer forMode:NSRunLoopCommonModes];
    
    _nTimerCount = 0;
}
- (void)timerRelease
{
    if(_mpTimer)
    {
        [_mpTimer invalidate];
//        [m_pTimer release];
    }
}

- (void)timerMethods
{
    if (_nTimerCount >= kPAProgressView_AnimateDuration)
    {
        [self timerRelease];
        
        [self hide];
    }
    
    _nTimerCount++;
}

#pragma mark - methods
- (void)show:(UIView *)view contentString:(NSString *)string withProgressViewType:(PAProgressViewType)type
{
    [self show:view contentString:string withProgressViewType:type delegate:nil autoHide:YES];
}
- (void)show:(UIView *)view contentString:(NSString *)string withProgressViewType:(PAProgressViewType)type delegate:(id)delegate autoHide:(BOOL)autoHide;
{
    [self refreshFrameWithString:string type:type showView:view];
    
    [view addSubview:self];
    
    [_pContent setText:string];
    
    [self show];
    
     _delegate = delegate;
    
    if ( autoHide )
    {
       [self initTimer];
    }
}

- (void)showInView:(UIView *)view
{
    [self refreshFrameWithString:_pContent.text type:_nCurrentProgressType showView:view];
    [view addSubview:self];
    [self show];
}

- (void)show
{
    [self setAlpha:0.0f];
    [UIView animateWithDuration:kPAProgressView_ShowAnimateWithDuration
                     animations:^{
                         [self setAlpha:1.0f];
                     }
                     completion:^(BOOL finished){
                     }];
}

- (void)hide
{
    [self setAlpha:1.0f];
    [UIView animateWithDuration:kPAProgressView_ShowAnimateWithDuration
                     animations:^{
                         [self setAlpha:0.0f];
                     }
                     completion:^(BOOL finished){
                         if (finished)
                         {
                             [self removeFromSuperview];
                             [self setAlpha:1.0f];
                         }
                     }];
    
    
    
    if (_delegate && [_delegate respondsToSelector:@selector(PAProgressViewDismiss:)])
    {
        [_delegate performSelector:@selector(PAProgressViewDismiss:) withObject:self];
    }
}

- (void)refreshFrameWithString:(NSString *)contentString type:(PAProgressViewType)type showView:(UIView*)view
{
    //180
    CGSize size = [contentString sizeWithMyFont:kPAProgressView_ContentStringFont];
    
    NSInteger nContentStringWith = size.width;
    
    NSInteger nSpace = 10;
    
    NSInteger viewHeight = kContentHeight;
    if( [view isKindOfClass:[UIWindow class]] )
    {
        viewHeight = kScreenHeight;
    }
    
    switch(type)
    {
        case PAProgressViewTypeString:
        {
            [_pLoadingView stopAnimating];
            [_pLoadingView setHidden:YES];
            
            if (nContentStringWith <= 140)
            {
                [_pRectangleView setFrame:CGRectMake((kScreenWidth - 180)/2,
                                                      viewHeight-108-45,                                                   180,
                                                      45)];
                [_pContent setFrame:CGRectMake(0,
                                                0,
                                                _pRectangleView.frame.size.width,
                                                _pContent.frame.size.height)];
            }
            else
            {
                NSInteger nWidth = nContentStringWith + nSpace * 2;
                NSInteger nX = (kScreenWidth - nWidth) * 0.5f;
                [_pRectangleView setFrame:CGRectMake(nX,
                                                      viewHeight-108-45,
                                                      nWidth,
                                                      45)];
                
                [_pContent setFrame:CGRectMake(0,
                                                0,
                                                _pRectangleView.frame.size.width,
                                                _pContent.frame.size.height)];
            }
        }
            break;
        case PAProgressViewTypeActivityIndicatorViewAndString:
        {
            [_pLoadingView startAnimating];
            [_pLoadingView setHidden:NO];
            

            if (nContentStringWith <= 140)
            {
                [_pRectangleView setFrame:CGRectMake((kScreenWidth - 180)/2,
                                                      viewHeight-108-45,
                                                      180,
                                                      45)];
                
                NSInteger nSumWidth = _pLoadingView.frame.size.width + nContentStringWith;
                NSInteger nX = (_pRectangleView.frame.size.width - nSumWidth) * 0.5f;
                
                [_pLoadingView setFrame:CGRectMake(nX,
                                                    _pLoadingView.frame.origin.y,
                                                    _pLoadingView.frame.size.width,
                                                    _pLoadingView.frame.size.height)];
                
                [_pContent setFrame:CGRectMake(_pLoadingView.frame.origin.x + _pLoadingView.frame.size.width + nSpace,
                                                _pContent.frame.origin.y,
                                                nContentStringWith,
                                                _pContent.frame.size.height)];
            }
            else
            {
                NSInteger nWidth = nContentStringWith + _pLoadingView.frame.size.width + nSpace * 2;
                NSInteger nRectangleView_X = (kScreenWidth - nWidth) * 0.5f;
                
                [_pRectangleView setFrame:CGRectMake(nRectangleView_X,
                                                      viewHeight-108-45,
                                                      nWidth,
                                                      45)];
                
                NSInteger nSumWidth = _pLoadingView.frame.size.width + nContentStringWith;
                NSInteger nX = (_pRectangleView.frame.size.width - nSumWidth) * 0.5f;
                
                [_pLoadingView setFrame:CGRectMake(nX,
                                                    _pLoadingView.frame.origin.y,
                                                    _pLoadingView.frame.size.width,
                                                    _pLoadingView.frame.size.height)];
                
                [_pContent setFrame:CGRectMake(_pLoadingView.frame.origin.x + _pLoadingView.frame.size.width,
                                                _pContent.frame.origin.y,
                                                nContentStringWith,
                                                _pContent.frame.size.height)];
            }
        }
            break;
        case PAProgressViewTypeCustom:
        {
            
        }
            break;
        default:break;
    }

    
    
}

#pragma mark -
- (void)setProgressType:(PAProgressViewType)progressType
{
    if ([NSThread mainThread])
    {
        [self updateProgressType:progressType];
    }
    else
    {
        [self performSelectorOnMainThread:@selector(updateProgressType:) withObject:[NSNumber numberWithInt:progressType] waitUntilDone:NO];
    }
}

- (void)updateProgressType:(PAProgressViewType)type
{
    _nCurrentProgressType = type;
}

- (void)setContentString:(NSString *)contentString
{
    if ([NSThread mainThread])
    {
        [self updateContentString:contentString];
    }
    else
    {
        [self performSelectorOnMainThread:@selector(updateContentString:) withObject:contentString waitUntilDone:NO];
    }
}

- (void)updateContentString:(NSString *)contentString
{
    [_pContent setText:contentString];
}

@end
