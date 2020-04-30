//
//  Car.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void) run{
    _oilMass -=1;
    NSLog(@"%i",_oilMass);
}
- (void) stop{
    NSLog(@"the car aaccddd stoped!");
}
- (void) fillOil{
    _oilMass +=5;
    NSLog(@"%i",_oilMass);
}

@end
