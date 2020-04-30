//
//  Student.h
//  OC-instancetype
//
//  Created by Z CM on 2020/3/22.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person
@property NSString *school;
- (void)sayHi;
@end

NS_ASSUME_NONNULL_END
