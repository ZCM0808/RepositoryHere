//
//  Gun.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DanJia.h"
NS_ASSUME_NONNULL_BEGIN

@interface Gun : NSObject{
    NSString *_model;
    DanJia *_danJia;
}
- (void)setModel:(NSString *)model;
- (NSString *)model;
- (void)setDanJia:(DanJia *)danJia;
- (DanJia *)DanJia;
@end

NS_ASSUME_NONNULL_END
