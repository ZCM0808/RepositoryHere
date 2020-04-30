//
//  Car.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject{
    @public
    NSString *_branch;
    NSString *_model;
    NSString *_color;
    int _seatCount;
    int _wheel;
    int _oilMass;
}
- (void) run;
- (void) stop;
- (void) fillOil;

@end

NS_ASSUME_NONNULL_END
