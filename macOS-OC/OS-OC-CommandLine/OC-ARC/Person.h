//
//  Person.h
//  OC-ARC
//
//  Created by Z CM on 2020/4/5.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic,retain) NSString *name;
@property(nonatomic,strong)Book *bookName;
-(void)zcm;
@end

NS_ASSUME_NONNULL_END
