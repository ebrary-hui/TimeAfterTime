//
//  StockHolding.h
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/12/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject{
    float purchasePrice;
    float currentPrice;
    float numberOfShares;
}

@property float purchasePrice;
@property float currentPrice;
@property float numberOfShares;


-(float)costInDollars;
-(float)valueInDollars;
-(StockHolding *)initWithPurchasePrice:(float)purchasePrice shares:(float)shares;

@end
