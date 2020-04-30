//
//  Soldier.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier
- (void)setName:(NSString *)name{
    _name = name;
}
- (void)fire:(Gun *)gun with:(DanJia *)danJia{
    
    int count = [danJia bulletCount];
    NSLog(@"士兵%@就位，%@就位！剩余子弹%i发，预备！",_name,[gun model],count);
    
    
    count --;
    [danJia setBulletCount:count];
    NSLog(@"砰！！！");
    NSLog(@"剩余子弹%i发。",count);
    
}

@end
