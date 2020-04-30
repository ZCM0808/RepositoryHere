//
//  Judge.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Judge.h"

@implementation Judge
- (void)Result:(Robot *)robot andPlayer:(Player *)player{
    FirstType playerType = player->_selectedType;
    FirstType robotType = robot->_selectedType;
    
    if (playerType - 1 == robotType || playerType + 2 ==robotType) {
        NSLog(@"%@ won!!",player->_name);
        player->_score++;
    }
    else if (playerType == robotType)
    {
        NSLog(@"平局");
    }
    else
    {
        NSLog(@"%@ won",robot->_name);
        robot->_score++;
    }
    NSLog(@"%@:%d",player->_name,player->_score);
    NSLog(@"%@:%d",robot->_name,robot->_score);
}
@end
