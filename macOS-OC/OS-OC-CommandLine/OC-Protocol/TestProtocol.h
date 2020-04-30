//
//  TestProtocol.h
//  OC-Protocol
//
//  Created by Z CM on 2020/4/12.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TestProtocol <NSObject>
@optional
- (void)TestRun;
- (void)TestEat;

@required
- (void)TestNai;
- (void)TestSleep;

@end

NS_ASSUME_NONNULL_END
