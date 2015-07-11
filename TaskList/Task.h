//
//  Task.h
//  TaskList
//
//  Created by OSX on 7/11/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong,nonatomic) NSString *title; //.......... holds the title
@property (strong,nonatomic) NSString *descript; //.... holds the description of the task
@property (strong,nonatomic) NSDate *date; //............. holds the task due date
@property (assign,nonatomic) BOOL isCompleted; //......... holds whether its done

-(id)initWithData: (NSDictionary *)data; //............... custom initializer - returns an instance of self with all properties set from the dictionary parameter

@end
