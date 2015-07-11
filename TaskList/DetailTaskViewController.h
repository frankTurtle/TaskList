//
//  DetailTaskViewController.h
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTaskViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;


- (IBAction)editButton:(UIBarButtonItem *)sender;
@end
