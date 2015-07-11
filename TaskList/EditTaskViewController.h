//
//  EditTaskViewController.h
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditTaskViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *taskNameTextField;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UITextView *textView;

- (IBAction)saveButton:(UIBarButtonItem *)sender;

@end
