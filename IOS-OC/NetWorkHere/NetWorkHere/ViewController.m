//
//  ViewController.m
//  NetWorkHere
//
//  Created by Z CM on 2020/2/18.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WKWebView *wkwebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //url
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    //请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //发送异步请求
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        // resource  服务器返回的z响应头
        //data 服务器返回的响应体
        //connectionError 连接错误
        if (!connectionError) {
            NSString *html = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            //\n 换行
            [self.wkwebView loadHTMLString:html baseURL:nil];
            NSLog(@"html: \n%@",html);
        }else{
            NSLog(@"连接错误：%@",connectionError);
        }
    }];
}


@end
