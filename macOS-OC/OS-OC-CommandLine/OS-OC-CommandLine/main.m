//
//  main.m
//  OS-OC-CommandLine
//
//  Created by Z CM on 2019/12/20.
//  Copyright © 2019 Z CM. All rights reserved.
//

#import "Soldier.h"
#import <Foundation/Foundation.h>
#import "Boy.h"
#import "Dog.h"
#import "Car.h"
#import "Student.h"
#import "Player.h"
#import "Robot.h"
#import "Judge.h"
#import "LocationLength.h"
#import "Cat.h"
#import "GirlStudent.h"
#pragma mark - Person类的声明
@interface Person : NSObject
{
    @public
    NSString *name;
    int  _age;
}
- (void)run;
- (void)singWith:(NSString *)songName;
- (int)all:(int)count and:(int)num;
@end
#pragma mark - Person类的实现
@implementation Person
- (void)run
{
    NSLog(@"人在跑，人在跳，人哈哈哈");
}
- (void)singWith:(NSString *)songName
{
    NSLog(@"人都要会唱%@这首歌",songName);
}
- (int)all:(int)count and:(int)num;
{
    int nums = count * num;
    return nums;
}
@end








//void name(void);
void name(){
    NSLog(@"here is name function");
};
int main(int argc, const char * argv[]) {
    
    Boy *boy1 = [Boy new];
    boy1->_name = @"LiLei";
    boy1->_age = 28;
    
    Dog *dog = [Dog new];
    
    dog->_life = 30;
    [boy1 SayHi];
    NSLog(@"68 let dog shout:");
    boy1->_dog = dog;
    [boy1 LetShout:dog];
    
    int nums = 31;
    NSLog(@"dog's life is %i",dog->_life);
    [boy1 GiveLife:dog :nums];
    
    Dog *newDog = [boy1 GiveDog];
    NSLog(@"newDog is %@",newDog->_color);
    
    boy1->_dog = dog;
    [dog Shout];
    [boy1->_dog Shout];
    
    Student *student = [Student new];
    student->_boy = boy1;
    [student->_boy->_dog Shout];
    
    Player *xiaoMing = [Player new];
    xiaoMing->_name = @"小明";
    
    
    Robot *Alpha1 = [Robot new];
    Alpha1->_name = @"A🐶";
    
    
    Judge *Gouzi = [Judge new];
    Gouzi->_name = @"Gouzi";
    
    int loopTimes = 0;
    while (loopTimes == 2) {
        [xiaoMing showFirst];
        [Alpha1 showFirst];
        [Gouzi Result:Alpha1 andPlayer:xiaoMing];
        
        NSLog(@"wanna play again ? y/n");
        
        loopTimes++;
        if (loopTimes == 3) {
            char answer = 'a';
            rewind(stdin);  //清除键盘缓冲区
            scanf("%c",&answer);
            if (answer != 'y') {
                NSLog(@"welcome here next time! 😊😊");
                break;
            }
            loopTimes = 0;
        }
    }
    
    LocationLength *location1 = [LocationLength new];
    location1->_y = 100;
    location1->_x = 90;
    LocationLength *location2 = [LocationLength new];
    location2->_y = 200;
    location2->_x = 190;
    
    double dis = [location1 DistanceFrom:location2];
    NSLog(@"dis = %lf",dis);
    
    @try {
        NSLog(@"I'm error");
    } @catch (NSException *exception) {
        NSLog(@"I'm Catch!😨  :%@",exception);
    } @finally {
        NSLog(@"I'm finally!!😤");
    }
    [Student laugh]; //类方法调用
    
    Student *stu1 = [Student student];
    Student *stu2 = [Student studentWithName:@"Hi" andAge:18];
    NSLog(@"@%@,@%@",stu1->_name,stu2->_name);
    
    
    NSString *str1 = @"中国我爱你";
    NSLog(@"%p %@",str1,str1);
    
    NSUInteger len = [str1 length];
    NSLog(@"%lu",len);
    unichar ch = [str1 characterAtIndex:3];
    NSLog(@"ch=%C",ch);
    NSString *str2 = @"123中国我爱你";
    unichar ch2 = [str2 characterAtIndex:3];
    NSLog(@"\n %@ \n ch=%C \n ch=%c",str2,ch2,ch2);  //why not output?
    
    [str1 isEqualToString:str2];
    int res = [str1 compare:str2];
    NSLog(@"%d",res);
    
    [Dog new]->_name = @"jack";
    [[Dog new] Shout];
    
    Cat *cat1 = [Cat new];
    [cat1 setName:@"MM"];
    [cat1 SayHi];
    [cat1 setName:@"MMi"];
    [cat1 SayHi];
    NSLog(@"%@",[cat1 Name]);
    
    DanJia *danJia = [DanJia new];
    [danJia setCapcity:-1];  //容量可以设置默认值
    [danJia setBulletCount:70];  //装弹数
    if ([danJia bulletCount] < 0)
    {
        NSLog(@"子弹数/容量不合要求！");
        return 0;
    }
    
    Gun *gun = [Gun new];
    [gun setModel:@"AWM"];
    [gun model];
    
    Soldier *soldier = [Soldier new];
    [soldier setName:@"SuSan"];
    for (int i = 0; i <= 1; i++) {
        [soldier fire:gun with:danJia];
    }
    
    //继承
    [GirlStudent laugh];
    
    GirlStudent *girl1 = [GirlStudent new];
    [girl1 run];
    //GirlStudent *girl= [Student new];
    girl1.color = @"yellow";
    girl1.size = 18;
    
    
    NSLog(@"%@ %i",girl1.color,girl1.size); //点语法：需要set get方法；
    
    Class class1 = [GirlStudent class];
    NSLog(@"%p",class1);
    [class1 laugh];
    Class class2 = [girl1 class];
    NSLog(@"194 %p",class2);
    [class2 laugh];
    Class c1 = [stu1 class];
    NSLog(@"%p",c1);
    
    SEL s1 = @selector(run);
    NSLog(@"%p",s1);
    //[girl1 performSelector:s1];
    //PerformSelector may cause a leak because its selector is unknown
    [girl1 performSelector:s1 withObject:nil];
    
    name();
    return 0;
}

