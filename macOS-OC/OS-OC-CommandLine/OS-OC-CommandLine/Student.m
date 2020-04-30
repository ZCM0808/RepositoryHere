//
//  Student.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/26.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void) run{
    _high +=1;
    _weight -=0.5;
    NSLog(@"%f",_weight);
}
- (void) eat{
    _high +=1;
    _weight +=0.5;
    NSLog(@"%f",_weight);
}
- (void) study{
    _Cscore +=1;
    _OCscore +=1;
    _IOSscore +=1;
    NSLog(@"%f,%f,%f",_Cscore,_OCscore,_IOSscore);
}
- (void) sleep{
    NSLog(@"%@,%@,%i,%f,%f,%@,%f,%f,%f",_name,_birthday,_age,_high,_weight,_sex,_Cscore,_OCscore,_IOSscore);
}
//类方法调用
+ (void) laugh{
    NSLog(@"类方法调用：\n哈啊哈哈哈哈哈！%@,%p", self,self);
}
//类方法规范
+ (Student *) student{
    Student *student = [Student new];
    return student;
}
//类方法规范
+ (Student *) studentWithName:(NSString *)name andAge:(int)age{
    Student *student = [Student new];
    student->_name = name;
    student->_age = age;
    return student;
}
@end
