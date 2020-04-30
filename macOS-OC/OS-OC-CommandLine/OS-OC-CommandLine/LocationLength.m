//
//  LocationLength.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/2.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "LocationLength.h"
#import <math.h>
@implementation LocationLength
- (double)DistanceFrom:(LocationLength *)secondLocation{
    
    double res1 = (_x - secondLocation->_x) * (_x - secondLocation->_x);
    double res2 = (_y - secondLocation->_y) * (_y - secondLocation->_y);
    double res3 = res1 + res2;
    
    
    return sqrt( res3);
}

@end
