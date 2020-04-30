//
//  Boy.m
//  OC-Protocol
//
//  Created by Z CM on 2020/4/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Boy.h"

@implementation Boy

- (void)Hungry{
    NSLog(@"%@饿。。。",_name);
    [_obj TestNai];
}
- (void)Sleepy{
    NSLog(@"%@困。。。",_name);
    [_obj TestSleep];
}

@end
