//
//  Task.m
//  TaskList
//
//  Created by OSX on 7/11/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "Task.h"
#import "Defines.h"

@implementation Task

// Default initializer
// returns an object with the dictionary empty
-(id)init
{
    self = [self initWithData:nil];
    return self;
}

// Initializer that sets all properties to the Dictionary values
-(id)initWithData: (NSDictionary *)data
{
    self = [super init]; //............................................ required
    
    if (self) //....................................................... if initializer worked
    {
        self.title = data[TITLE]; //................................... set the title
        self.description = data[DESCRIPTION]; //....................... set description
        self.date = data[DATE]; //..................................... set the date
        self.isCompleted = [data[COMPLETION] boolValue]; //............ set if completed
    }
    
    return self;
}

@end
