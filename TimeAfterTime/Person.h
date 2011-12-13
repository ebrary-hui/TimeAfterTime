//
//  Person.h
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/11/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (float) bodyMassIndex;
@end
