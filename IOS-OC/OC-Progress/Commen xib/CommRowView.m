//
//  RowView.m
//  OC-Progress
//
//  Created by Z CM on 2020/4/30.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import "CommRowView.h"

@implementation CommRowView

+ (instancetype)commRowView{
    CommRowView *rv = [[NSBundle mainBundle] loadNibNamed:@"CommRowView" owner:nil options:nil][0];
    return rv;
}
@end
