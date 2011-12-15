//
//  Employee.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/14/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

-(float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
