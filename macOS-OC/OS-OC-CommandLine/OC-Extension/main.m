//
//  main.m
//  OC-Extension
//
//  Created by Z CM on 2020/4/11.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+extension.h"
typedef void(^NewBlock)(void);

void TestBlock(void(^blockHere)(void)){
    blockHere();
    NSLog(@"test Block");
}
void TestBlock2(int(^blockHere2)(void)){
    int num = blockHere2();
    NSLog(@"test Block,%d",num);
}
void TestBlock3(int(^blockHere3)(int num1,int num2)){
    int num1 = 9,num2 = 0;
    int num = blockHere3(num1,num2);
    NSLog(@"test Block,%d",num);
}
NewBlock TestBlock4(){
    void(^block4)(void) = ^void(void){
        NSLog(@"hi word");
    };
    
    return block4;
}

int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    p1.name = @"ZCM";
    
    NSLog(@"name:%@",p1.name);
    
    void(^block1)(void) = ^void(){
        NSLog(@"hihihi");
    };
    void(^block2)(void) = ^{
        NSLog(@"hihihi");
    };
    block2();
    void(^block3)(int,int) = ^(int num1,int num2){
        NSLog(@"hihihi");
    };
    block3(1,2);
    
    
    
    NewBlock block4 = ^void(){
        NSLog(@"hihihi");
    };
    block4();
    
    TestBlock(^{
        NSLog(@"hi");
    });
    TestBlock2(^int{
        int num = 2;
        return num;
    });
    TestBlock3(^int(int num1, int num2) {
//        num1 = 1;
//        num2 = 2;
        return num1 +num2;
//        return 3;
    });
    NewBlock block5 = TestBlock4();
    block5();
    return 0;
}

