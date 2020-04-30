//
//  Dog.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gender.h"
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject{
    @public
    NSString *_name;
    NSString *_color;
    float _speed;
    NSString *_sex;
    float _weight;
    Gender _gender;
    int _life;
}
- (void)Shout;
- (void)dogEat;
- (void)dogWoof;
- (void)dogRun;

@end

NS_ASSUME_NONNULL_END
