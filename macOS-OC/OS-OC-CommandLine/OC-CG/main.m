//
//  main.m
//  OC-CG
//
//  Created by Z CM on 2020/4/17.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    CGPoint p;
    p.x = 10;
    p.y = 20;
    
    CGPoint p1 = {10,20};
    
    CGPoint p2 = {.x = 10,.y = 20};
    
    p1 = CGPointMake(20, 21);
    p2 = NSMakePoint(22, 23);
    
    //日期转换字符串
    NSDate *date = [NSDate new];
    NSLog(@"%@",date);
    NSDateFormatter *format = [NSDateFormatter new];
    format.dateFormat = @"yyyy MM dd HH mm ss";
    NSString *str = [format stringFromDate:date];
    NSLog(@"%@",str);
    //字符串转日期
    NSDate *date1 = [format dateFromString:@"2020 04 04 16 08 08"];
    NSLog(@"%@",date1);
    //300秒以后
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:300];
    NSLog(@"%@",date2);
    //计算时间差
    double sj = [date2 timeIntervalSinceDate:date];
    NSLog(@"%lf",sj);
    //得到日期个部分
    //1.创建日历对象，从日历对象去取到各个部分
    //这种太麻烦，可以创建NSDate的分类来实现返回年月日的功能
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *com = [cal components:NSCalendarUnitYear|NSCalendarUnitMonth fromDate:date2];
    NSLog(@"%ld",(long)com.year);
    return 0;
}
