//
//  ViewController.m
//  计算器
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//- (IBAction)compute;
@property (nonatomic,weak)IBOutlet UITextField *num1;
@property (nonatomic,weak)IBOutlet UITextField *num2;
@property (nonatomic,weak)IBOutlet UILabel *sunLabel;
@property (nonatomic, weak)IBOutlet UITextField *account;
@property (nonatomic, weak)IBOutlet UITextField *password;
@property (nonatomic,weak)IBOutlet UILabel *allInfo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)login{
    NSLog(@"登陆开始。。。");
    NSString *str1 = self.account.text;
    NSString *str2 = self.password.text;
    NSString *str3 = @"str3";
    str3 =[NSString stringWithFormat:@"%@\n%@",str1,str2];
    self.allInfo.text = str3;
    NSLog(@"登陆成功。%@",str3);
}
- (IBAction)compute{
    NSLog(@"计算按钮在这！");
    NSString *str1 = self.num1.text;
    NSString *str2 = self.num2.text;
    
    int result = str1.intValue + str2.intValue;
    
    self.sunLabel.text = [NSString stringWithFormat:@"%d",result];
//    //关闭键盘
//    [self.num1 resignFirstResponder];
//    [self.num2 resignFirstResponder];
    //强行关闭键盘
    [self.view endEditing:YES];
}

@end


