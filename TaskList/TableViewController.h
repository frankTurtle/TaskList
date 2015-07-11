//
//  TableViewController.h
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UINavigationItem *navigationBar;

- (IBAction)plusButton:(UIBarButtonItem *)sender;
- (IBAction)reorderButton:(UIBarButtonItem *)sender;

@end
