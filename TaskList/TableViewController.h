//
//  TableViewController.h
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddTaskViewController.h"

@interface TableViewController : UITableViewController <AddTaskViewControllerDelegate>

#pragma mark - Properties
@property (strong,nonatomic) NSMutableArray *taskObjects; //................. holds all the tasks

#pragma mark - Actions
- (IBAction)plusButton:(UIBarButtonItem *)sender;
- (IBAction)reorderButton:(UIBarButtonItem *)sender;

@end
