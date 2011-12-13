//
//  Person.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/11/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float) bodyMassIndex{
    return weightInKilos / (heightInMeters * heightInMeters);
}
@end
