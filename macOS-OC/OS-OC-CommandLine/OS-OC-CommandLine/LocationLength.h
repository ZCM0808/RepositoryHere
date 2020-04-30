//
//  LocationLength.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/2.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationLength : NSObject{
    @public
    int _x;
    int _y;
}
- (double)DistanceFrom:(LocationLength *)secondLocation;
@end

NS_ASSUME_NONNULL_END
