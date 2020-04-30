//
//  Boy.h
//  OC-Protocol
//
//  Created by Z CM on 2020/4/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Boy : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int size;
@property(nonatomic,strong)NSObject<TestProtocol> *obj;

- (void)Hungry;
- (void)Sleepy;
@end

NS_ASSUME_NONNULL_END
