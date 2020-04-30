//
//  ViewController.m
//  OC-Progress
//
//  Created by Z CM on 2020/4/18.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"
#import "CommRowView.h"
//宏定义：
#define textX 25
#define textWidth 270
#define textHeight 50

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnNew;
@property (weak, nonatomic) IBOutlet UIButton *btnDel;
@property (weak, nonatomic) UITableView *tvTest;
@property (strong, nonatomic) UITextField *textNew;
@property (assign, nonatomic) CGRect rect;
@property (assign, nonatomic) CGPoint point;
@property (assign, nonatomic) int tagIndex;
@property (strong, nonatomic) NSMutableArray *muArr;
@property (strong, nonatomic) NSMutableDictionary *muDic;
@property (strong, nonatomic) NSString *textPath;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollV;

@end

@implementation ViewController
- (NSMutableDictionary *)muDic{
    NSMutableDictionary *muDic = [NSMutableDictionary new];
    NSLog(@"get");
    return muDic;
    
}
- (UITextField *)textNew{
    
    
    _tagIndex += 1;
    NSArray *arrXib = [[NSBundle mainBundle] loadNibNamed:@"RowView" owner:self options:nil];
    UIView *vXib = arrXib[0];
    
    UITextField *t = [vXib viewWithTag:1];
    t.textColor = [UIColor blackColor];
    t.backgroundColor = [UIColor yellowColor];
    //设置文字距左边框距离
    t.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 8, 0)];
    t.leftViewMode = UITextFieldViewModeAlways;
    t.layer.cornerRadius = 15;
    
    vXib.frame = CGRectMake(300, _point.y, vXib.frame.size.width, vXib.frame.size.height);
//    NSLog(@"%@",vXib);
    
//    _textNew = [[UITextField alloc]initWithFrame:CGRectMake(300, _point.y + 70, textWidth, textHeight)];
//    _textNew.text = @"please type ...";
//    _textNew.textColor = [UIColor blackColor];
//    _textNew.backgroundColor = [UIColor yellowColor];
//    //设置文字距左边框距离
//    _textNew.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 8, 0)];
//    _textNew.leftViewMode = UITextFieldViewModeAlways;
//
//    _textNew.layer.cornerRadius = 15;
////    _textNew.layer.borderWidth = 1;
    vXib.tag = _tagIndex;
    [self.scrollV addSubview:vXib];
    [UIView animateWithDuration:0.2 animations:^{
        vXib.frame = CGRectMake(30, self->_point.y, vXib.frame.size.width, vXib.frame.size.height);
        
    }];
    [t.text writeToFile:@"/Users/zcm/Downloads/JJ.txt" atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
    _point = CGPointMake(vXib.frame.origin.x, vXib.frame.origin.y+70);
    self.btnDel.enabled = YES;
    
    [self saveListData];
    
    [t addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventEditingDidBegin];
    
    return _textNew;
}
- (void)testAction:(UITextField *)sender{
    NSLog(@"%@",sender);
}

- (void)saveListData{
    
    if (_muDic != nil) {
        [_muDic setValue:[NSNumber numberWithInt:_point.y] forKey:[NSString stringWithFormat:@"height%d",_tagIndex]];
//        NSLog(@"57 %@",_muDic);
    }else{
        NSMutableDictionary *muDic = [NSMutableDictionary new];
        [muDic setValue:[NSNumber numberWithInt:_point.y] forKey:[NSString stringWithFormat:@"height%d",_tagIndex]];
        self.muDic = muDic;

    }
//    NSLog(@"66 %@",_muDic);
    //获取路径Document
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [pathArray objectAtIndex:0];
    //获取文件的完整路径
    _textPath = [path stringByAppendingPathComponent:@"ListData.plist"];
    [_muDic writeToFile:_textPath atomically:YES];
    }

///  add
- (IBAction)btnNewUpInside:(id)sender {
    
    [self textNew];
    
    
}
- (IBAction)btnDelRow:(UIButton *)btn {
    
//    NSLog(@"%@",btn.superview.superview.subviews);
//    NSLog(@"%@",self.view.subviews);
    _point.y -= 70;
    NSLog(@"%@",btn);
    [_muDic removeObjectForKey:[NSString stringWithFormat:@"height%lu",btn.superview.tag]];
    int delTag = (int)btn.superview.tag;
//    NSLog(@"%@",[self.view viewWithTag:delTag]);
    [btn.superview removeFromSuperview];
    
    
    
    for (int i = delTag+1; i <= _tagIndex; i++) {
        [self.view viewWithTag:i].frame= CGRectMake([self.view viewWithTag:i].frame.origin.x,  [self.view viewWithTag:i].frame.origin.y -70, [self.view viewWithTag:i].frame.size.width, [self.view viewWithTag:i].frame.size.height);
        [self.view viewWithTag:i].tag -=1;
        
        [_muDic removeObjectForKey:[NSString stringWithFormat:@"height%d",i]];
        [_muDic setValue:[NSNumber numberWithInt:[self.view viewWithTag:i-1].frame.origin.y] forKey:[NSString stringWithFormat:@"height%d",i-1]];
//        NSLog(@"%@",[self.view viewWithTag:i]);
//        NSLog(@"%@",_muDic);
    }
    [_muDic writeToFile:_textPath atomically:YES];
    _tagIndex -= 1;
    if (_point.y == 0) {
        self.btnDel.enabled = NO;
    }
    
}

/// delete
- (IBAction)btnDeleteUpInside:(id)sender {
    
    [[self.scrollV viewWithTag:_tagIndex] removeFromSuperview];
    _point.y -= 70;
    _tagIndex -= 1;
    [_muDic removeObjectForKey:[NSString stringWithFormat:@"height%lu",(unsigned long)_muDic.count]];
    [_muDic writeToFile:_textPath atomically:YES];
    if (_point.y == 0) {
        self.btnDel.enabled = NO;
    }
    
//    NSLog(@"%@",self.scrollV.subviews);
//    NSLog(@"%@",[self.scrollV viewWithTag:_tagIndex]);
    
}





/// hide keyboard
- (IBAction)touchView:(id)sender {
    
     [self.view endEditing:YES];
}

- (void)newTextField{
    if (_textNew) {
        NSLog(@"hhhh");
    }
    for (int i = 0; i < _muDic.count; i++) {
        _tagIndex += 1;
               
        NSArray *arrXib = [[NSBundle mainBundle] loadNibNamed:@"RowView" owner:nil options:nil];
        UIView *vXib = arrXib[0];
//        UIView *vXib = [CommRowView commRowView];
        
        vXib.frame = CGRectMake(300, 70*(i+1), vXib.frame.size.width, vXib.frame.size.height);
        

        UITextField *t = [vXib viewWithTag:1];
       
        t.layer.cornerRadius = 15;
        t.layer.borderWidth = 0.5;
        
        
//        设置文字距左边框距离
        t.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 8, 0)];
        t.leftViewMode = UITextFieldViewModeAlways;
        
        t.backgroundColor = [UIColor colorWithRed:230/255 green:230/255 blue:230/255 alpha:0.1];
        vXib.tag = (NSInteger)_tagIndex;
//        NSLog(@"%ld",(long)vXib.tag);  //在前面给tag赋值会报错
        _point = vXib.frame.origin;
        
        [self.scrollV addSubview:vXib];
        [UIView animateWithDuration:0.7 animations:^{
            vXib.frame = CGRectMake(30, 70*i, vXib.frame.size.width, vXib.frame.size.height);
            
        }];
    }
//    NSLog(@"%@",self.scrollV.subviews);
//    NSLog(@"%@",self.scrollV.subviews.lastObject);
    
}
- (void)readListData{
    //获取路径Document
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [pathArray objectAtIndex:0];
    //获取文件的完整路径
    _textPath = [path stringByAppendingPathComponent:@"ListData.plist"];
    _muDic = [NSMutableDictionary dictionaryWithContentsOfFile:_textPath];
    NSLog(@"初次加载文件\n%@",_textPath);
    if (_muDic.count > 0) {
        self.btnDel.enabled = YES;
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:1];
//        [self newTextField];
//        [UIView commitAnimations];
        
            [self newTextField];
        
    }else{
        return;
    }
    

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btnDel.enabled = NO;
    self.scrollV.contentSize = CGSizeMake(375, 800);
    [self readListData];
    NSLog(@"viewDidLoad...");
  
}


@end
