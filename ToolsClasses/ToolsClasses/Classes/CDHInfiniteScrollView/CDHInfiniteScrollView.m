//
//  CDHInfiniteScrollView.m
//  无限轮播器
//
//  Created by chendehao on 15/9/1.
//  Copyright © 2015年 CDHao. All rights reserved.
//

#import "CDHInfiniteScrollView.h"
#import "CDHImageCell.h"

@interface CDHInfiniteScrollView()  <UICollectionViewDataSource, UICollectionViewDelegate>
/** 定时器 */
@property (nonatomic, weak) NSTimer *timer;
/** 用来显示图片的collectionView */
@property (nonatomic, weak) UICollectionView *collectionView;
@end

@implementation CDHInfiniteScrollView

static NSInteger CDHItemCount = 100;
static NSString * const CDHImageCellId = @"CDHImageCell";

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // 布局
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.minimumLineSpacing = 0;
        
        // UICollectionView
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        collectionView.dataSource = self;
        collectionView.delegate = self;
        collectionView.pagingEnabled = YES;
        collectionView.showsHorizontalScrollIndicator = NO;
        collectionView.showsVerticalScrollIndicator = NO;
        [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CDHImageCell class]) bundle:nil] forCellWithReuseIdentifier:CDHImageCellId];
        [self addSubview:collectionView];
        self.collectionView = collectionView;
    }
    return self;
}

- (void)setImages:(NSArray *)images{
    _images = images;
    
    // 设置默认显示最中间的图片
    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:(CDHItemCount * self.images.count) / 2 inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
    
    // 开启定时器
    [self startTimer];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    // collectionView
    self.collectionView.frame = self.bounds;
    
    // layout
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    layout.itemSize = self.bounds.size;
}

#pragma mark - 定时器
- (void)startTimer{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(nextPage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)stopTimer{
    [self.timer invalidate];
    self.timer = nil;
}

- (void)nextPage{
    CGPoint offset = self.collectionView.contentOffset;
    offset.x += self.collectionView.frame.size.width;
    [self.collectionView setContentOffset:offset animated:YES];
}

#pragma mark - <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return CDHItemCount * self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CDHImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CDHImageCellId forIndexPath:indexPath];
    
    cell.imageView.image = self.images[indexPath.item % self.images.count];
    // NSLog(@"cellitem = %ld",indexPath.item);
    return cell;
}

#pragma mark - 其他
/** 重置cell的位置到中间 */
- (void)resetPosition{
    // 滚动完毕时，自动显示最中间的cell
    NSInteger oldItem = self.collectionView.contentOffset.x / self.collectionView.frame.size.width;
    NSInteger newItem = (CDHItemCount * self.images.count / 2) + (oldItem % self.images.count);
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:newItem inSection:0];
    [self.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
    // NSLog(@"oldItem= %ld, newItem = %ld",oldItem,newItem);
}

#pragma mark - <UICollectionViewDelegate>
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    // 停止定时器
    [self stopTimer];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    // 开启定时器
    [self startTimer];
}

/** scrollView滚动完毕的时候调用（通过setContentOffset:animated:滚动）
 注意: 如果没有动画的时候是不会调用此方法 */
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    // 重新设置当前位置到中间位置
    [self resetPosition];
}

/**  scrollView滚动完毕的时候调用（人为拖拽滚动） */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    // 重新设置当前位置到中间位置
    [self resetPosition];
}

@end
