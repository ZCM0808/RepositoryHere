//
//  DetailViewController.h
//  Master-Detail_1
//
//  Created by Z CM on 2020/1/4.
//  Copyright © 2020 Z CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

