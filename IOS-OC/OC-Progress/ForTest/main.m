//
//  main.m
//  ForTest
//
//  Created by Z CM on 2020/4/19.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSMutableDictionary *muDic = [NSMutableDictionary new];
    [muDic setValue:@"1" forKey:@"num"];
    [muDic setValue:@"2" forKey:@"height"];
    NSLog(@"%@",muDic);
    return 0;
}
