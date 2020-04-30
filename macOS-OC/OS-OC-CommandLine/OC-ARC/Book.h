//
//  Book.h
//  OC-ARC
//
//  Created by Z CM on 2020/4/6.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,weak)Person *personName;
@end

NS_ASSUME_NONNULL_END
