//
//  Person.h
//  OC-instancetype
//
//  Created by Z CM on 2020/3/22.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property int age;

//+ (Person *)person;
+ (id)person;
@end

NS_ASSUME_NONNULL_END
