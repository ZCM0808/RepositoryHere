//
//  Boy.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Gender.h"


@interface Boy : NSObject
{
    @public
    NSString *_name;
    int _age;
    Gender _gender;
    Dog *_dog;
}
- (void)SayHi;
- (void)LetShout:(Dog *)dog;
- (void)GiveLife:(Dog *)dog :(int)nums;
- (Dog *)GiveDog;
@end


