//
//  Boy.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import "Boy.h"
#import "Dog.h"
@implementation Boy
-(void)SayHi{
    NSLog(@"Hello Dog,I'm %@",_name);
}
-(void)LetShout:(Dog *)dog{
    dog->_name = @"dogName";
    [dog Shout];
    [_dog Shout];
}
- (void)GiveLife:(Dog *)dog :(int)nums{
    dog->_life += nums;
    NSLog(@"%@ get %i more lives, it can live to %i now!!!",dog->_name,nums,dog->_life);
}
- (Dog *)GiveDog{
    Dog *wangCai = [Dog new];
    wangCai->_color = @"Yellow!";
    wangCai->_life = 30;
    wangCai->_gender = GenderFemale;
    
    return wangCai;
}
@end
