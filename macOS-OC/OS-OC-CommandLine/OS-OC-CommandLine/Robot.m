//
//  Robot.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Robot.h"
#import "Player.h"

@implementation Robot
- (void)showFirst{
    int robotSelect = arc4random_uniform(3)+1;
    
    NSString *_type =
    [self firstTypeWithNumber:robotSelect];
    
    NSLog(@"机器人出拳：%@",_type);
    
    _selectedType = robotSelect;
}

- (NSString *)firstTypeWithNumber:(int)number{
    
    switch (number) {
        case 1:
            return @"✂️";
        case 2:
            return @"✊";
        default:
            return @"布";
    }
}
@end
