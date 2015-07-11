//
//  TableViewController.m
//  TaskList
//
//  Created by OSX on 6/5/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "TableViewController.h"
#import "Defines.h"

@interface TableViewController ()

@end

@implementation TableViewController

// Method to return an NSMutableArray for our taskObjects object
-(NSMutableArray *)taskObjects
{
    if (!_taskObjects)
        _taskObjects = [NSMutableArray new];
    
    return _taskObjects;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.destinationViewController isKindOfClass:[AddTaskViewController class]] ) // ............... if the destination is to AddTaskVC
    {
        AddTaskViewController *destinationVC = segue.destinationViewController; //......................... create new instance of AddTaskVC
        destinationVC.delegate = self; //.................................................................. set the delegate
    }
}


#pragma mark - Helper Methods
// Method to return a dictionary of the Task Objects properties
// uses the defines as keys
-(NSDictionary *)taskObjectAsAProperty:(Task *)taskObject
{
    NSDictionary *rtnDict = @{ TITLE :       taskObject.title,
                               DESCRIPTION : taskObject.description,
                               DATE :        taskObject.date,
                               COMPLETION :  @(taskObject.isCompleted)
                               };
    
    return rtnDict;
}

#pragma mark - Delegate Methods
// Method to handle when the cancel button is pressed
// dismisses current view controller
-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil]; //.......... dismisses current VC
}

// Method to handle when you add a new task
-(void)didAddTask:(Task *)task
{
    [self.taskObjects addObject:task]; //.................................................................................................................................. adds the task to the array
    
    NSMutableArray *copiedNSUserDefaults = [ [NSMutableArray alloc]initWithArray:[[[NSUserDefaults standardUserDefaults] arrayForKey:TASK_OBJECT_KEY] mutableCopy] ]; //... copies array from NSUserDefaults
    
    [copiedNSUserDefaults addObject:[self taskObjectAsAProperty:task]]; //................................................................................................. adds a dictionary to the array copied from the NSUSerDefaults
    
    [[NSUserDefaults standardUserDefaults] setObject:copiedNSUserDefaults forKey:TASK_OBJECT_KEY]; //...................................................................... adds the array to NSUSerDefaults
    [[NSUserDefaults standardUserDefaults] synchronize]; //................................................................................................................ persists the data
    
    [self dismissViewControllerAnimated:YES completion:nil]; //............................................................................................................ dismiss the current VC
    
    [self.tableView reloadData]; //........................................................................................................................................ reloads data for tableView
    
}

#pragma mark - Button Actions
// Method to segue to AddTaskVC once button is pressed
- (IBAction)plusButton:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toAddTaskVC" sender:self];
}

- (IBAction)reorderButton:(UIBarButtonItem *)sender
{
    
}
@end
