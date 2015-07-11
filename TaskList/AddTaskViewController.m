//
//  AddTaskViewController.m
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "AddTaskViewController.h"
#import "Task.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addButton:(UIButton *)sender
{
    [self.delegate didAddTask:[self getTask]]; //...... call method declared in protocol
    
}

- (IBAction)cancelButton:(UIButton *)sender
{
    [self.delegate didCancel]; //.......... call method declared in protocol
}

#pragma mark - Helper method
// Method to get the task based on the current info entered in the outlets
// default completion status is NO
-(Task *)getTask
{
    Task *rtnTask = [Task new]; //................... new Task
    
    rtnTask.title = self.taskNameTextField.text; //.. sets the title
    rtnTask.descript = self.taskView.text; //........ sets the description
    rtnTask.date = self.datePicker.date; //.......... gets the due date
    rtnTask.isCompleted = NO; //..................... sets its completion to NO
    
    return rtnTask;
}

@end
