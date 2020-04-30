//
//  ViewController.m
//  ButoonHere
//
//  Created by Z CM on 2020/1/24.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    kMovingDirUp = 1,
    kMovingDirDown,
    kMovingDirLeft,
    kMovingDirRight,
}kMovingDir;

#define kMovingDelta 20

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *headImageView;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
@property (weak, nonatomic) IBOutlet UITextField *descLabel;
@property (strong, nonatomic) UIButton *leftTopBtn;

@property (assign, nonatomic) int index;
@property (nonatomic, strong) NSArray *imglist;
//@property
//1.setter & getter
//2.带下划线_的成员变量
@property (weak, nonatomic) IBOutlet UIImageView *tomView;

@end

@implementation ViewController
- (IBAction)animation {
    if (self.tomView.animating) {
        return;
    }
    
    NSMutableArray *mArray = [NSMutableArray array];
    NSString *bundlePath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Tom"];
//    NSLog(@"%@",bundlePath);
//    /Users/zcm/Library/Developer/CoreSimulator/Devices/177099D9-2178-48DB-BF2F-E4C1BA2FEB87/data/Containers/Bundle/Application/912B0994-54C9-4A40-9462-43F56FCC93BE/ButoonHere.app/Tom
//    NSString *tempPath = [bundlePath stringByAppendingPathComponent:@"JOJO"];
//    NSLog(@"%@",tempPath);
    NSArray *fileNames = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:bundlePath error:NULL];
//    NSLog(@"filenames:%@",fileNames);
    
    for (NSString *fileName in fileNames) {
        NSString *filePath = [NSString stringWithFormat:@"%@/%@",bundlePath,fileName];
        //加载到缓存中，不会释放，图片多时占内存
        UIImage *img1 = [UIImage imageNamed:@""];
        //无缓存，用完释放
        UIImage *img = [UIImage imageWithContentsOfFile:filePath];
        [mArray addObject:img];
    }
    //设置动画
    self.tomView.animationImages = mArray;
    self.tomView.animationDuration = mArray.count * 0.2;
    self.tomView.animationRepeatCount = 1;
    
    [self.tomView startAnimating];
    //setAnimationImages: 释放内存
    [self.tomView performSelector:@selector(setAnimationImages:) withObject:NULL afterDelay:self.tomView.animationDuration];
}

//懒加载：在需要的时候，实例化加载到内存中
- (NSArray *)imglist{
    
    if (_imglist == nil) {
//        NSDictionary *dict1 = @{@"name":@"001",@"desc":@"001"};
//        NSDictionary *dict2 = @{@"name":@"002",@"desc":@"002"};
//        NSDictionary *dict3 = @{@"name":@"003",@"desc":@"003"};
//        _imglist = @[dict1,dict2,dict3];
        //Bundle 只读
        NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageList" ofType:@"plist"];
        _imglist = [NSArray arrayWithContentsOfFile:path];

        
    }
    return _imglist;
}
- (UIButton *)leftTopBtn{
    if (!_leftTopBtn) {
        NSLog(@"leftTopBtnHere");
        //创建按钮
        _leftTopBtn = [[UIButton alloc] init];
        //设置按钮位置
        _leftTopBtn.frame = CGRectMake(50, 50, 80, 40);
        //设置按钮文本
        [_leftTopBtn setTitle:@"ReSet" forState:UIControlStateNormal];
        //设置按钮文本颜色
        [_leftTopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_leftTopBtn setBackgroundColor:[UIColor lightGrayColor]];
//        UIImage *img = [UIImage imageNamed:@"001"];
        //设置按钮图片背景
//        [_leftTopBtn setBackgroundImage:img forState:UIControlStateNormal];
        
        [_leftTopBtn setTitle:@"ReSet" forState:UIControlStateHighlighted];
        [_leftTopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
//        UIImage *img2 = [UIImage imageNamed:@"003"];
        //设置按钮图片背景
//        [_leftTopBtn setBackgroundImage:img2 forState:UIControlStateHighlighted];
        
        [self.view addSubview:_leftTopBtn];
        //监听方法：
        [_leftTopBtn addTarget:self action:@selector(reSet) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _leftTopBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //首次执行：
    [self rightBtn];
    //右翻页：
    [_rightButton addTarget:self action:@selector(rightBtn) forControlEvents:UIControlEventTouchUpInside];
    [_leftButton addTarget:self action:@selector(leftBtn) forControlEvents:UIControlEventTouchUpInside];
}
- (void)reSet{
    self.index = 1;
    _indexLabel.text = [NSString stringWithFormat:@"1/3"];
    UIImage *img = [UIImage imageNamed:_imglist[self.index-1][@"name"]];
    //设置按钮图片背景
    [_headImageView setBackgroundImage:img forState:UIControlStateNormal];
    self.rightButton.enabled = YES;
    self.descLabel.text = _imglist[self.index-1][@"desc"];
}
- (void)leftBtn{
    NSLog(@"leftBtn!");
    self.index--;
    [self click];
}
- (void)rightBtn{
    NSLog(@"rightBtn!");
    self.index++;
    [self click];
}
- (void)click{
    NSLog(@"click!");
    NSLog(@"%i",self.index);
    [self imglist];
    [self leftTopBtn];
    _indexLabel.text = [NSString stringWithFormat:@"%d/%d",self.index,3];
    NSLog(@"%d,%@",self.index,_imglist[self.index-1][@"name"]);
    
    UIImage *img = [UIImage imageNamed:_imglist[self.index-1][@"name"]];
    //设置按钮图片背景
    [_headImageView setBackgroundImage:img forState:UIControlStateNormal];
    self.descLabel.text = _imglist[self.index-1][@"desc"];
    
    self.rightButton.enabled = (self.index !=3 );
    self.leftButton.enabled = (self.index !=1 );
    
    
}
- (IBAction)move:(UIButton *)sender {
    NSLog(@"Hi...");
    CGRect rect = self.headImageView.frame;
    
    switch (sender.tag) {
        case kMovingDirUp:
//            rect.origin.y -=kMovingDelta;
            self.headImageView.transform = CGAffineTransformTranslate(self.headImageView.transform, 0, -20);
            break;
        case kMovingDirDown:
            rect.origin.y +=kMovingDelta;
            self.headImageView.frame = rect;
            break;
        case kMovingDirLeft:
            rect.origin.x -=kMovingDelta;
            self.headImageView.frame = rect;
            break;
        case kMovingDirRight:
            rect.origin.x +=kMovingDelta;
            self.headImageView.frame = rect;
            break;
            
        default:
            break;
    }
    
    
    
}

- (IBAction)zoom:(UIButton *)sender {
    CGRect rect = self.headImageView.bounds;//frame
    
    switch (sender.tag) {
        case 5:
//            rect.size.height += 20;
//            rect.size.width += 20;
            self.headImageView.transform = CGAffineTransformScale(self.headImageView.transform, 1.5, 1.5);
            break;
        case 6:
            rect.size.height -= 20;
            rect.size.width -= 20;
            self.headImageView.bounds = rect;
        default:
            break;
    }

    
    
}

- (IBAction)rotate:(UIButton *)sender {
    
    switch (sender.tag) {
        case 7:
            self.headImageView.transform =   CGAffineTransformRotate(self.headImageView.transform, -M_PI_4);//45˚
            break;
        case 8:
            self.headImageView.transform =   CGAffineTransformRotate(self.headImageView.transform, M_PI_4);
            break;
            
        default:
            break;
    }
    
}


@end
