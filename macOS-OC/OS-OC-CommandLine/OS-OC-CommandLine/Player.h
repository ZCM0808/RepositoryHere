//
//  Player.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstType.h"


@interface Player : NSObject
{
    @public
    NSString *_name;
    int _score;
    FirstType _selectedType;

}

- (void)showFirst;
- (NSString *)firstTypeWithNumber:(int)number;
@end


