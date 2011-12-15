//
//  StockHolding.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/12/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchasePrice, currentPrice, numberOfShares;

-(float) costInDollars{
    return [self purchasePrice] * [self numberOfShares];
}

-(float) valueInDollars{
    return [self currentPrice] * [self numberOfShares];
}

-(StockHolding *) initWithPurchasePrice:(float)price shares:(float)shares{
    if (self = [super init]){
        [self setPurchasePrice:price];
        [self setNumberOfShares:shares];
    }
    return self;
}
@end
