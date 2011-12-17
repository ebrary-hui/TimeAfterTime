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

-(void) addAssetsObject:(Asset *)a{
    if (!assets){
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}

- (unsigned int) valueOfAssets{
    unsigned int sum = 0;
    for (Asset *a in assets){
        sum += [a resaleValue];
    }
    return sum;
}

- (NSString*) description{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
             [self employeeID], [self valueOfAssets]];
}

- (void)dealloc{
    NSLog(@"dellocating %@", self);
}

@end
