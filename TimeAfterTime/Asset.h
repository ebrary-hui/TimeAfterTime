//
//  Asset.h
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/16/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject{
    NSString *label;
    
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;


@end
