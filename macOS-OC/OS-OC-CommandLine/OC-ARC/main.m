//
//  main.m
//  OC-ARC
//
//  Created by Z CM on 2020/4/5.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person+zcm.h"
int main(int argc, const char * argv[]) {
    if(1){
        Person *p1 = [Person new];
        p1.name = @"张Person";
        Book *b1 = [Book new];
        b1.name = @"书名";
        
        p1.bookName = b1;
        b1.personName = p1;
        
        //两个属性都是 strong，不会被释放
//        NSLog(@"%@",p1.name);
//        NSLog(@"%@",b1.name);
        
        //更改其中一个属性为 weak，都会被释放
        
        NSLog(@"%@",p1.name);
        NSLog(@"%@",b1.name);
        [p1 zcm];
    }
    
    
//    @autoreleasepool {  //自动释放池
//        // insert code here...
//        Person *p1 = [Person new];
//        p1.name = @"张Person";
//
//        NSLog(@"Hello, World!");
//    }
    
    
    return 0;
}
