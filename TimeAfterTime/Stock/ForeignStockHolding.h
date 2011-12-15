//
//  ForeignStockHolding.h
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/14/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding{
    float conversionRate;
}

@property float conversionRate;
-(ForeignStockHolding *)initWithPurchasePrice:(float)purchasePrice shares:(float)shares rate:(float) rate;

@end
