//
//  Employee.h
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/14/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Asset.h"
@interface Employee : Person{
    int employeeID;
    NSString *lastName;
    Person *spouse;
    NSMutableArray *children;
    NSMutableArray *assets;
}

@property int employeeID;

- (void) addAssetsObject: (Asset *) a;
- (unsigned int) valueOfAssets;

@end
