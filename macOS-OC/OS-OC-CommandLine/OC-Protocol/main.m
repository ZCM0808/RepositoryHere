//
//  main.m
//  OC-Protocol
//
//  Created by Z CM on 2020/4/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boy.h"
#import "Girl.h"
int main(int argc, const char * argv[]) {
    
    Boy *b1 = [Boy new];
    b1.name = @"JJ";
    b1.size = 18;
    
    Girl *g1 = [Girl new];
    g1.name = @"MM";
    
    b1.obj = g1;
    
    [b1 Hungry];
    [b1 Sleepy];
    
    NSString *str = @"JOJO1rh";
    int size = 18;
    NSString *str2 = [NSString stringWithFormat:@"%@大概%dcm",str,size];
    NSLog(@"%@",str2);
    
    char *str3 = "JOJO";
    [NSString stringWithUTF8String:str3];
    
    //写入文件
    NSError *err;
    BOOL res = [str writeToFile:@"/Users/zcm/Downloadsv/JJ.txt" atomically:NO encoding:NSUTF8StringEncoding error:&err];
    NSLog(@"%@\n  err: %@\n  err.localizedDescription:%@\n",res?@"Success":@"Fail",err,err.localizedDescription);
    //从文件读
    NSString *str4= [NSString stringWithContentsOfFile:@"/Users/zcm/Downloads/JJ.txt" encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"40 %@",str4);
    
    //本地磁盘： file:///users/zcm/Downloads/JJ.txt
    //网页： http://www.baidu.com
    //ftp: ftp://server.itcast.cn/jj.txt
    NSURL *url1 = [NSURL URLWithString:@"http://www.baidu.com"];
    NSString *str5 = [NSString stringWithContentsOfURL:url1 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"47 %@",str5);
    url1 = [NSURL URLWithString:@"file:///users/zcm/Downloads/JJ.txt"];
    [str5 writeToURL:url1 atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
    NSString *s1 = [NSString new];
    s1 = @"JJ007";
    NSString *s2 = [NSString new];
    s2 = @"Jj007";
    NSLog(@"55 %p,%p",s1,s2);
    NSString *s3 = @"JJ007";
    NSString *s4 = @"Jj007";
    NSLog(@"58 %p,%p",s3,s4);
    
    NSComparisonResult resu = [s1 compare:s2];
    NSLog(@"%ld",(long)resu);
    
    //判断以什么开头以什么结尾
    BOOL b11 = [s1 hasPrefix:@"J"];
    BOOL b22 = [s1 hasSuffix:@"0"];
    NSLog(@"%@ %@",b11?@"Yes":@"no",b22?@"Yes":@"no");
    
    //字符串中搜索特定字符串//NSNotFound
    NSRange range = [s1 rangeOfString:@"0"];
    NSLog(@"  %lu  %lu",(unsigned long)range.length,(unsigned long)range.location);
    
    //截取字符串
    NSString *st = @"不教胡马渡阴山";
    NSString *test1 = [st substringToIndex:2];
    NSString *test3 = [st substringWithRange:NSMakeRange(2, 3)];
    NSString *test2 = [st substringFromIndex:5];
    NSLog(@"%@  %@  %@",test1,test3,test2);
    
    //替换字符串
    st = [st stringByReplacingOccurrencesOfString:@"胡马" withString:@"JOJO"];
    NSLog(@"%@",st);
    
    //转换字符串，从头开始转，直到无法转为止
    NSString *strc = @"aA 90a101 ";
    int num82 = strc.intValue;
    float num83 = strc.floatValue;
    NSLog(@"%d,%f",num82,num83);
    
    //删除左右空格
    NSLog(@"%@，%p",strc,strc);
    strc = [strc stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceCharacterSet];
    NSLog(@"92 %@，%p",strc,strc);
    //转换大小写
    strc = [strc uppercaseString];
    NSLog(@"95 %@，%p",strc,strc);
    strc = [strc lowercaseString];
    NSLog(@"%@，%p",strc,strc);
    //去掉字符串前后大小写字母
    strc = [strc stringByTrimmingCharactersInSet:NSCharacterSet.lowercaseLetterCharacterSet];
    NSLog(@"%@，%p",strc,strc);
    strc = [strc stringByTrimmingCharactersInSet:NSCharacterSet.uppercaseLetterCharacterSet];
    NSLog(@"%@，%p",strc,strc);
    return 0;
}
