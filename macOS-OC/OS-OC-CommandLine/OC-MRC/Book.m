//
//  Book.m
//  OC-MRC
//
//  Created by Z CM on 2020/4/2.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Book.h"

@implementation Book
-(void)dealloc{
    NSLog(@"  book dealloc from %@",_owner.name);
    [_owner release];
    
    [super dealloc];
}
@end
