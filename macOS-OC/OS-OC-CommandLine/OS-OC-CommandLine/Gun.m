//
//  Gun.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Gun.h"

@implementation Gun
- (void)setModel:(NSString *)model{
    _model = model;
}
- (NSString *)model{
    return _model;
}
- (void)setDanJia:(DanJia *)danJia{
    _danJia = danJia;
}
- (DanJia *)DanJia{
    return _danJia;
}
@end
