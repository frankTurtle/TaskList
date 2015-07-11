//
//  AddTaskViewController.h
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@protocol AddTaskViewControllerDelegate <NSObject>

-(void)didCancel; //................................. method to handle what happens when you cancel adding a task
-(void)didAddTask:(Task *)task; //................... method to handle when you add a new task

@end

@interface AddTaskViewController : UIViewController

#pragma mark - Delegate
@property (weak,nonatomic) id <AddTaskViewControllerDelegate> delegate; //........... delegate

#pragma mark - Outlets
@property (strong, nonatomic) IBOutlet UITextField *taskNameTextField; //............ textField to hold the get the task name
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker; //.................. gives us the due date of the task
@property (strong, nonatomic) IBOutlet UITextView *taskView; //...................... allows you to say what the task is

#pragma mark - Actions
- (IBAction)addButton:(UIButton *)sender; //......................................... add's the task
- (IBAction)cancelButton:(UIButton *)sender; //...................................... cancels the task

@end
