//
//  GirlStudent.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2020/2/26.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface GirlStudent : Student
{
    @private
    NSString *_color;
    int _size;
}
@property int size;
- (void)setColor:(NSString *)color;
- (NSString *)color;
@end

NS_ASSUME_NONNULL_END
