//
//  main.m
//  OC-NSMutableString
//
//  Created by Z CM on 2020/4/14.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    //追加内容
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"aaa"];
    [str appendString:@"bbb"];
    [str appendFormat:@"%@%@",@"jojo",@"COCO"];
    NSLog(@"%@",str);
    
    NSArray *arr = [NSArray array]; //长度是0 无意义
    NSArray *arr2 = [NSArray arrayWithObject:@"JOJO"];
    NSLog(@"%@ %@",arr,arr2);
    NSArray *arr3 = [NSArray arrayWithObjects:@"aa",@"JOJO", nil];
    NSLog(@"%@",arr3);
    NSArray *arr1 = @[@"a",@"b",@"c",@"c",@"d"];
    NSLog(@"%@",arr1[0]);
    NSLog(@"%@ %lu",[arr1 objectAtIndex:0],arr1.count);
    NSLog(@"%@ %@",[arr1 containsObject:@"d"]?@"Y":@"N",arr1.firstObject);
    
    for (NSString *str1 in arr1) {
        NSLog(@"31 %@",str1);
    }
    [arr1 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@ %lu",obj,idx);
        if (idx == 3) {
            *stop = YES;
        }
    }];
    NSString *str4 = [arr1 componentsJoinedByString:@"-"];
    NSLog(@"%@",str4);
    
    NSString *str5 = @"a,a,x,s,d,c,e,ww,";
    NSArray *arr4 = [str5 componentsSeparatedByString:@","];
    for (NSString *str1 in arr4) {
        NSLog(@"45 %@",str1);
    }
    //数组存储到plist文件
    [arr4 writeToFile:@"/Users/zcm/Downloads/JJ.plist" atomically:NO];
    //读取plist文件到数组
    [NSArray arrayWithContentsOfFile:@"/Users/zcm/Downloadsv/JJ.txt"];
    
    NSMutableArray *mArr = [NSMutableArray arrayWithObjects:@"a",@"b",@"c",@"c",@"d", nil];
    
    [mArr addObject:@"new"];
    for (NSString *str1 in mArr) {
        NSLog(@"52 %@",str1);
    }
    [mArr addObjectsFromArray:arr4];
    for (NSString *str1 in mArr) {
        NSLog(@"56 %@",str1);
    }
    [mArr insertObject:@"JJ" atIndex:0];
    for (NSString *str1 in mArr) {
        NSLog(@"60 %@",str1);
    }
    [mArr removeObjectAtIndex:0];
    [mArr removeObject:@"a"];
    for (NSString *str1 in mArr) {
        NSLog(@"64 %@",str1);
    }
    
    NSNumber *num1 = [NSNumber numberWithInt:99];
    NSNumber *num2 = [NSNumber numberWithInt:99];
    NSNumber *num3 = [NSNumber numberWithInt:99];
    NSNumber *num4 = [NSNumber numberWithInt:99];
    NSNumber *num5 = @10;
    
    NSArray *arrr = @[num1,num2,num3,num4,num5];
    for (NSNumber *n1 in arrr) {
        NSLog(@"75 %d",n1.intValue);
    }
    //写读
    NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:@"JOJO",@"name",@"99",@"age", nil];
    NSDictionary *d1 = @{@"name":@"JOJO",@"age":@"99"};
    NSLog(@"%@ %@ %@",d[@"name"],[d objectForKey:@"age"],d1);
    //遍历
    for (id item in d) {
        NSLog(@"%@ %@",item,d[item]);
    }
    //遍历
    [d enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@ %@",key,obj);
    }];
    
    return 0;
}
