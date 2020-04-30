//
//  main.m
//  OC-NSFileManager
//
//  Created by Z CM on 2020/4/17.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LogBool(val) NSLog(@"%@",val?@"YES":@"NO")

int main(int argc, const char * argv[]) {
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    //判断文件是否存在
    NSString *path = @"/Users/zcm/Downloads/JJ.text";
    BOOL res = [manager fileExistsAtPath:path];
    LogBool(res);
    //判断是文件或文件夹路径
    BOOL res2;
    res = [manager fileExistsAtPath:path isDirectory:&res2];
    LogBool(res2);
    //判断是否有权限读取
    res = [manager isReadableFileAtPath:path];
    LogBool(res);
    //判断是否有权限写入
    res = [manager isWritableFileAtPath:path];
    LogBool(res);
    //判断是否有权删除
    res = [manager isDeletableFileAtPath:path];
    LogBool(res);
    //获取文件信息
    NSDictionary *dict = [manager attributesOfItemAtPath:path error:nil];
    NSLog(@"%@",dict[NSFileSize]);
    //获取文件夹下所有文件/文件夹路径
    NSArray *arr = [manager subpathsAtPath:@"/Users/zcm/Downloads"];
    NSLog(@"%@",arr);
    //获取文件夹下当前文件/文件夹路径,包括隐藏文件
    NSArray *arr2 = [manager contentsOfDirectoryAtPath:@"/Users/zcm/Downloads" error:nil];
    NSLog(@"%@",arr2);
    //创建文件
    NSString *str = @"nei rong";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    res = [manager createFileAtPath:path contents:data attributes:nil];
    
    //创建文件夹
    res = [manager createDirectoryAtPath:@"/Users/zcm/Downloads/jj" withIntermediateDirectories:YES attributes:nil error:nil];
    LogBool(res);
    //复制文件到文件夹,目标文件名需要指定,且不能重复
    res = [manager copyItemAtPath:path toPath:@"/Users/zcm/Downloads/jj/jj.text" error:nil];
    LogBool(res);
    //移动文件,目标文件名需要指定，且不能重复
    res = [manager moveItemAtPath:path toPath:@"/Users/zcm/Downloads/JOJO.text" error:nil];
    LogBool(res);
    //重命名文件其实就是移动文件时重命名目标文件
    //删除文件,直接删除，不会放到废纸篓
    res = [manager removeItemAtPath:@"/Users/zcm/Downloads/jj/jj.text" error:nil];
    LogBool(res);
    
    [NSThread sleepForTimeInterval:10];//秒
    return 0;
}
