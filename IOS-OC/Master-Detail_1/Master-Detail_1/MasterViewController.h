//
//  MasterViewController.h
//  Master-Detail_1
//
//  Created by Z CM on 2020/1/4.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

