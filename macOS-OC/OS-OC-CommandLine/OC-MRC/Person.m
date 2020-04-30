//
//  Person.m
//  OC-MRC
//
//  Created by Z CM on 2020/3/30.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Person.h"
#import "Book.h"
@implementation Person

-(void)dealloc{
    NSLog(@"  %@ dealloc after %@",_name,_book.name);
//    [_book release];
    [super dealloc];
}
-(void)sayHi{
    NSLog(@"MRC person sayHi");
}
@end
