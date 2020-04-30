//
//  Person.h
//  OC-MRC
//
//  Created by Z CM on 2020/3/30.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,retain) NSString *name;
@property(nonatomic,assign) int age;

@property(nonatomic,assign) Book *book;

-(void)sayHi;
@end

NS_ASSUME_NONNULL_END
