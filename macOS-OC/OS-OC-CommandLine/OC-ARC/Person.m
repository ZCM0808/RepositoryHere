//
//  Person.m
//  OC-ARC
//
//  Created by Z CM on 2020/4/5.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc{
//    NSLog(@"dealloc: Hello, World!");//[self.name retainCount]);
//    [_name release];  //ARC下不可用
//    [super dealloc];
    NSLog(@"Person.m ： person dealloc");
}
-(void)zcm{
    NSLog(@"person.m : this is person");
}
@end
