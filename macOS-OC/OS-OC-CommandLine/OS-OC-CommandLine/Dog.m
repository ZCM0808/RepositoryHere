//
//  Dog.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)Shout{
    //_name = @"WangZai";
    NSLog(@"   %@:Wang---!!!",_name);
}
- (void)dogEat{
    _weight +=0.5f;
    NSLog(@"%f",_weight);
}
- (void)dogWoof{
    NSLog(@"%@,%f,%@,%f",_color,_speed,_sex,_weight);
}
- (void)dogRun;
{
    _weight -=0.5f;
    NSLog(@"%f,%f",_speed,_weight);
}
@end
