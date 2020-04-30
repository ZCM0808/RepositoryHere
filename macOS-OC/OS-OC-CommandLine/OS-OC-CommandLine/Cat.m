//
//  Cat.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/11.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Cat.h"

@implementation Cat
- (void)setName:(NSString *)name{
    if ([name length] <=2) {
        _name = @"Num1";
    } else {
        _name = name;
    }
//    _name = [name length] <=2 ? @"nu" : name;
}
- (void)SayHi{
    NSLog(@"Hi,I'm %@",_name);
}
- (NSString *)Name{
    return _name;
}
@end
