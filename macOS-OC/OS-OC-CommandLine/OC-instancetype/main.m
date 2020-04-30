//
//  main.m
//  OC-instancetype
//
//  Created by Z CM on 2020/3/22.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person person];
    
    Student *s1 = [Student person];
    [s1 sayHi];
    
    BOOL b1 = [s1 respondsToSelector:@selector(sayHi2)];
    if (b1 == YES) {
        [s1 sayHi];
    }
    else {
        NSLog(@"no this function");
    }
    BOOL b2 = [s1 isKindOfClass:[Person class]];
    NSLog(@"%d",b2);
    
    BOOL b3 = [s1 isMemberOfClass:[Person class]];
    NSLog(@"%d",b3);
    
    BOOL b4 = [Student isSubclassOfClass:[Person class]];
    NSLog(@"%d",b4);
    
    BOOL b5 = [Student respondsToSelector:@selector(sayHi)];
    NSLog(@"是否有类方法：%d",b5);
    
    Person *p2 = [Person new];
    Person *p3 = [[Person alloc] init]; //init 构造方法
    
    return 0;//max:230
}
