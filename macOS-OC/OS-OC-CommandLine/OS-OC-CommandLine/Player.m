//
//  Player.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Player.h"

@implementation Player
- (void)showFirst{
    NSLog(@"请%@选择要出的拳头：1-✂️，2-✊，3-布",_name);
    
    int userSelect = 0;
    scanf("%d",&userSelect);
    
    NSString *_type =
    [self firstTypeWithNumber:userSelect];
    NSLog(@"玩家出拳：%@",_type);
    
    _selectedType = userSelect;
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
