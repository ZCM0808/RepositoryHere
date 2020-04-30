//
//  Student.h
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boy.h"
NS_ASSUME_NONNULL_BEGIN
typedef struct{
    int year;
    int month;
    int day;
}Birth;

@interface Student : NSObject
{
    @public
    NSString *_name;
    NSString *_birthday;
    int _age;
    float _high;
    float _weight;
    NSString *_sex;
    float _Cscore;
    float _OCscore;
    float _IOSscore;
    Boy *_boy;
    Birth _birth;
}
- (void) run;
- (void) eat;
- (void) study;
- (void) sleep;  //对象方法
+ (void) laugh;  //类方法声明
+ (Student *) student;  //类方法规范
+ (Student *) studentWithName:(NSString *)name andAge:(int)age;  //类方法规范
@end

NS_ASSUME_NONNULL_END
