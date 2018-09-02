//
//  TXGreetingViewController.m
//  TXChatParent
//
//  Created by gaoju on 12/28/16.
//  Copyright © 2016 xcsd. All rights reserved.
//

#import "TXGreetingViewController.h"
#import "TXGreetingCell.h"
#import "AppDelegate.h"
#import "UIColor+Hex.h"

@interface TXGreetingViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@property (nonatomic, strong) UIPageControl *pageControl;

@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation TXGreetingViewController

NSString *ID = @"TXGreetingViewController";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
}

- (void)setupUI {
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(kScreenWidth, kScreenHeight);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumLineSpacing = 0;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.pagingEnabled = YES;
    _collectionView.showsHorizontalScrollIndicator = NO;
    _collectionView.bounces = NO;
    [self.view addSubview:_collectionView];
    
    [_collectionView registerClass:[TXGreetingCell class] forCellWithReuseIdentifier:ID];
    
    [self.view addSubview:self.pageControl];
}

#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TXGreetingCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[TXGreetingCell alloc] init];
    }
    cell.index = [self.dataArr[indexPath.item] integerValue];
    
    if (indexPath.item == 3) {
        cell.startBlock = ^() {
            
            [[UIApplication sharedApplication] setStatusBarHidden:NO];
            AppDelegate *appdelegate = [UIApplication sharedApplication].delegate;
            if ([appdelegate isAutoLogin]) {
                [appdelegate createTabBarView];
            }else {
                [appdelegate createLoginView];
            }
            
            [USER_DEFAULT setBool:YES forKey:kFirstLogin];
        };
    }
    
    return cell;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    CGFloat offX = scrollView.contentOffset.x;
    self.pageControl.currentPage = floor((offX - kScreenWidth / 2) / kScreenWidth) + 1;
    
    if (offX >= kScreenWidth * 3) {
        self.pageControl.hidden = YES;
    }else {
        self.pageControl.hidden = NO;
    }
}

- (NSArray *)dataArr {
    if (_dataArr == nil) {
        _dataArr = @[@1, @2, @3, @4];
    }
    return _dataArr;
}

- (UIPageControl *)pageControl {
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake((kScreenWidth - 200) / 2, kScreenHeight - 75, 200, 10)];
        _pageControl.centerX = self.view.centerX;
        _pageControl.numberOfPages = 4;
        _pageControl.currentPageIndicatorTintColor = [UIColor colorWithHexRGB:@"626262"];
        _pageControl.pageIndicatorTintColor = [UIColor colorWithHexRGB:@"DCDCDC"];
    }
    return _pageControl;
}

@end
