//
//  main.m
//  TimeAfterTime
//
//  Created by HUI CHEN on 12/10/11.
//  Copyright (c) 2011 ebrary Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "StockHolding.h"
#import "Employee.h"
#import "ForeignStockHolding.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSArray *datelist = [NSArray arrayWithObjects:now, tomorrow, nil];
        for (NSDate *d in datelist){
            NSLog(@"%@", d);
        }
        NSLog(@"The date is %@", now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 1000,000 seconds it will be %@", later);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1970];
        [comps setMonth:8];
        [comps setDay:11];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double d = [now timeIntervalSinceDate: dateOfBirth];
        NSLog(@"It has been %f seconds since the start of my life.", d);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSHourCalendarUnit
                                        inUnit:NSYearCalendarUnit
                                       forDate:now];
        NSLog(@"This is hour %lu of the year", day);
        
        NSDate *nilVal = nil;
        NSLog(@"This is hour %f of the year", [nilVal timeIntervalSince1970]);
        
        NSLog(@"Daylight saving time: %@", [[NSTimeZone systemTimeZone] isDaylightSavingTime]);
        
        NSLog(@"host : %@", [[NSHost currentHost] localizedName]);
        
        NSString *nameStr = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" 
                                                  encoding:NSUTF8StringEncoding 
                                                         error:NULL];
        NSArray *names = [nameStr componentsSeparatedByString:@"\n"];
        // NSLog(@"name string : %@", nameStr);
        
        NSString *wordStr = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" 
                                                      encoding:NSUTF8StringEncoding 
                                                         error:NULL];
        NSArray *words = [wordStr componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names){
            if ([n caseInsensitiveCompare:@"Win"] != NSOrderedSame){
                continue;
            }
            NSLog(@"name is: %@", n);
            for (NSString *w in words){
                if ([n caseInsensitiveCompare:w] == NSOrderedSame){
                     NSLog(@"%@",n);
                    
                }
            }
        }
        
        Employee *person =[[Employee alloc] init];
        [person setHeightInMeters:1.67];
        [person setWeightInKilos:65];
        [person setEmployeeID:2];
        NSLog(@"BMI of %d is: %f", [person employeeID],[person bodyMassIndex]);
        
        NSMutableArray *stocks = [NSMutableArray arrayWithCapacity:20];
        [stocks addObject:[[ForeignStockHolding alloc] initWithPurchasePrice:13 shares:200 rate:1.5]];
        [stocks addObject:[[ForeignStockHolding alloc] initWithPurchasePrice:34 shares:100]];
        [stocks addObject:[[ForeignStockHolding alloc] initWithPurchasePrice:12.9 shares:150]];
        
        for (StockHolding *s in stocks){
            NSLog(@"cost is: %f", [s costInDollars]);
        }
                          
    }
    return 0;
}

