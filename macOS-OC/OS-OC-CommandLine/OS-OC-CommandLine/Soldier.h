//
//  Soldier.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
NS_ASSUME_NONNULL_BEGIN

@interface Soldier : NSObject{
    NSString *_name;
    Gun *_gun;
}
- (void)setName:(NSString *)name;
- (void)fire:(Gun *)gun with:(DanJia *)danJia;

@end

NS_ASSUME_NONNULL_END
