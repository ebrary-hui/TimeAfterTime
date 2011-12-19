//
//  Asset.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/16/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;


- (NSString *)description{
    if ([self holder]){
        return [NSString stringWithFormat:@"<%@: $%d assigned to %@>", [self label], [self resaleValue],
                [self holder]];
        
    } else {
        return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
    }
}

- (void)dealloc{
    NSLog(@"dellocating %@", self);
}
@end
