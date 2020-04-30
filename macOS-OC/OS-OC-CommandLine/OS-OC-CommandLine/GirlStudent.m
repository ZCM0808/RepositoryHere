//
//  GirlStudent.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/2/26.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "GirlStudent.h"

@implementation GirlStudent
{
    NSString *_color1;  //直接写在.m中，私有属性
}
@synthesize size = _size;
- (void)setColor1:(NSString *)color1{
    _color1 = color1;
}
- (NSString *)color1{
    return _color1;
}
- (void)setColor:(NSString *)color{
    _color = color;
}
- (NSString *)color{
    return _color;
}
- (void)showGirl{
    NSLog(@"私有方法：不声明，直接实现");
}
- (void)run{
    NSLog(@"\n重写run这个方法");
}
@end
