//
//  Asset.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/16/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;


- (NSString *)description{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void)dealloc{
    NSLog(@"dellocating %@", self);
}
@end
