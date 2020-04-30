//
//  Cat.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/11.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject
{
    NSString *_name;
    
}
- (void)setName:(NSString *)name;
- (void)SayHi;
- (NSString *)Name;
@end

NS_ASSUME_NONNULL_END
