//
//  Book.h
//  OC-MRC
//
//  Created by Z CM on 2020/4/2.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) Person *owner;

@end

NS_ASSUME_NONNULL_END
