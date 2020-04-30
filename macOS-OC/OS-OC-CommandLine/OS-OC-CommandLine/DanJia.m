//
//  DanJia.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "DanJia.h"

@implementation DanJia
- (void)setCapcity:(int)capcity{
    _capcity = capcity < 31 && capcity > 0 ? capcity : 30;
}
- (int)capcity{
    return _capcity;
}
- (void)setBulletCount:(int)bulletCount{
    
    _bulletCount = bulletCount > _capcity ? _capcity : bulletCount;
}
- (int)bulletCount{
    return _bulletCount;
}
@end
