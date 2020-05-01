//
//  ViewController.m
//  OC-ScrollView
//
//  Created by Z CM on 2020/4/30.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIImageView *imgViewLeft;
@property(nonatomic,strong)UIImageView *imgViewRight;
@property(nonatomic,assign)CGFloat positionX;
@property(nonatomic,strong)NSString *sourcePath;
@property(nonatomic,strong)NSArray *picPaths;
@property(nonatomic,assign)int picIndex;
@property(nonatomic,assign)int picCount;
@property(nonatomic,strong)UIPageControl *pageCon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadPics];
}
- (void)loadPics{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    _sourcePath = @"/Users/zcm/Downloads/pics";
    NSArray *arrContents = [fileManager subpathsAtPath:_sourcePath];
    _picCount = (int)arrContents.count;
    _picIndex = 1;
    _picPaths = arrContents;
//    NSLog(@"%d",_picCount);
    
   
    
    _scrollView = [UIScrollView new];
    _scrollView.frame = CGRectMake(0, 35, self.view.frame.size.width, 700);
    _scrollView.backgroundColor = [UIColor systemPinkColor];
    [self.view addSubview:_scrollView];
    
    for (int i = 0; i < 9; i++) {
        _imgViewLeft = [UIImageView new];
        NSString *picPath = [_sourcePath stringByAppendingFormat:@"/%@", _picPaths[i]];
        _imgViewLeft.image = [UIImage imageWithContentsOfFile:picPath];
        _imgViewLeft.frame = CGRectMake(self.view.frame.size.width * i, 0, self.view.frame.size.width, 700);
        //自适应比例填充
        _imgViewLeft.contentMode = UIViewContentModeScaleAspectFit;
        [_scrollView addSubview:_imgViewLeft];
    }

    
//    _picIndex += 1;
//    NSString *picPath2 = [_sourcePath stringByAppendingFormat:@"/%@", _picPaths[_picIndex]];
//    _imgViewRight = [UIImageView new];
//    _imgViewRight.image = [UIImage imageWithContentsOfFile:picPath2];
//    _imgViewRight.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, 700);
//    //自适应比例填充
//    _imgViewRight.contentMode = UIViewContentModeScaleAspectFit;
//    NSLog(@"%@",picPath2);
//    //    [self.view addSubview:imgViewLeftiew];
//    [_scrollView addSubview:_imgViewRight];
    

    //滚动
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width*9, 700);
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.contentInset = UIEdgeInsetsMake(1, 0, 1, 0);
    //缩放

    _scrollView.maximumZoomScale = 2.0;
    _scrollView.minimumZoomScale = 1;
    //分页
    _scrollView.pagingEnabled = YES;
    
//    [_scrollView setContentOffset:CGPointMake(self.view.frame.size.width, 0) animated:YES];
    _scrollView.delegate = self;
    
    _pageCon = [UIPageControl new];
    _pageCon.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height - 60);
    _pageCon.bounds = CGRectMake(0, 0, 300, 30);
    _pageCon.numberOfPages = 9;
    _pageCon.pageIndicatorTintColor = [UIColor systemFillColor];
    _pageCon.currentPageIndicatorTintColor = [UIColor systemBlueColor];
    [self.view addSubview:_pageCon];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"scroll");
//    NSLog(@"%f",scrollView.contentOffset.x);
//    [self changeImgView];
    
    _pageCon.currentPage = scrollView.contentOffset.x/self.view.frame.size.width;
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
//    NSLog(@"zoom");
    return _imgViewLeft;
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    //减速
//    NSLog(@"will begin decelerating");
//    NSLog(@"%f",scrollView.contentOffset.x);
    
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //减速
//    NSLog(@"decelerating");
//    NSLog(@"%f",scrollView.contentOffset.x);
//    [self changeImgView];
    
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
//    NSLog(@"end drag");
//    NSLog(@"%f",scrollView.contentOffset.x);
    
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
//    NSLog(@"begin draging %f",scrollView.contentOffset.x);
//     [self changeImgView];
}
- (void)changeImgView{
    CGFloat positionCurrX = _scrollView.contentOffset.x;
    NSLog(@"_positionX %f",_positionX);
    NSLog(@"positionCurrX %f",positionCurrX);
    if ( positionCurrX - _positionX == 1) {
        NSLog(@"to right %f",positionCurrX);
        
//        _picIndex += 1;
//        NSString *picPath = [_sourcePath stringByAppendingFormat:@"/%@", _picPaths[_picIndex]];
//
//        _imgViewRight.image = [UIImage imageWithContentsOfFile:picPath];
//        _imgViewRight.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, 700);
//        //自适应比例填充
//        _imgViewRight.contentMode = UIViewContentModeScaleAspectFit;
//
//        [_scrollView addSubview:_imgViewRight];
//        _positionX = self.view.frame.size.width;
//        NSLog(@"%f",_positionX);
//        NSLog(@"%f",_scrollView.contentOffset.x);
        
    }else if ( _positionX - positionCurrX == 1){
                NSLog(@"to left %f",positionCurrX);
        
        //        _imgViewRight.frame = CGRectMake(0, 0, self.view.frame.size.width, 700);
        //        _imgViewLeft.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, 700);
        //
        //        _imgViewRight.frame = CGRectMake(0, 0, self.view.frame.size.width, 700);
        //
        //        _picIndex -= 1;
        //        NSString *picPath = [_sourcePath stringByAppendingFormat:@"/%@", _picPaths[_picIndex]];
        //        _imgViewLeft.image = [UIImage imageWithContentsOfFile:picPath];
        //        _imgViewLeft.frame = CGRectMake(0, 0, self.view.frame.size.width, 700);
        //        //自适应比例填充
        //        _imgViewLeft.contentMode = UIViewContentModeScaleAspectFit;
        //        [scrollView addSubview:_imgViewLeft];
        
    }
}

@end
