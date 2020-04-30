//
//  main.m
//  OC-MRC
//
//  Created by Z CM on 2020/3/30.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    p1.name = @"JOJO";
    
    NSUInteger count= [p1 retainCount];
    NSLog(@"16: %lu",count);//1
    [p1 retain];  //2
    NSLog(@"18: %lu",p1.retainCount);
    
    [p1 release];  //1
    NSLog(@"p1： %lu",p1.retainCount);
    Person *p2 = p1;
    NSLog(@"p2：%@ %lu",p2.name,p2.retainCount);
    [p1 release];  //0
//    [p2 release];  //0
//    [p1 sayHi];  //僵尸对象，野指针
//    [p1 sayHi];  //when run ,error may happen here
//    [p1 sayHi];
//    NSLog(@"  p1: %lu",p1.retainCount);
    
    Person *p = [Person new];
    p.name = @"person小青";
    Book *b = [Book new];
    b.name = @"book金瓶梅";
    
    p.book = b;
    b.owner = p;
    NSLog(@"  b: %lu",b.retainCount);
    NSLog(@"  b: %lu",p.book.retainCount);
    NSLog(@"  p: %lu 38",p.retainCount);
    [p release];
    NSLog(@"  p: %lu 41",p.retainCount);
    [b release];
//    NSLog(@"  b: %lu",b.retainCount);
//    NSLog(@"  p: %lu  42",p.retainCount); //EXC_BAD_ACCESS

    return 0;
}
