//
//  ForeignStockHolding.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/14/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) costInDollars{
    return [super costInDollars] * conversionRate;
}

- (float) valueInDollars{
    return [super valueInDollars] * conversionRate;
}
-(ForeignStockHolding *)initWithPurchasePrice:(float)price shares:(float)shares rate:(float) rate{
    if (self = [super initWithPurchasePrice:price
                                     shares:shares]){
        [self setConversionRate:rate];
    }
    return self;
}

@end
