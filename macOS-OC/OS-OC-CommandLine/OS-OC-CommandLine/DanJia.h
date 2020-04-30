//
//  DanJia.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DanJia : NSObject{
    int _bulletCount;
    int _capcity;
}
- (void)setCapcity:(int)capcity;
- (int)capcity;
- (void)setBulletCount:(int)bulletCount;
- (int)bulletCount;
@end

NS_ASSUME_NONNULL_END
