//
//  Judge.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/1/1.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"
NS_ASSUME_NONNULL_BEGIN

@interface Judge : NSObject{
    @public
    NSString *_name;
    
}
- (void)Result:(Robot *)robot andPlayer:(Player *)player;
@end

NS_ASSUME_NONNULL_END
