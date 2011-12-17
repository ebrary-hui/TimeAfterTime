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
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            // Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            // Put the employee in the employees array
            [employees addObject:person];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            // Create an asset
            Asset *asset = [[Asset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
        }
        
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;      
                          
    }
    return 0;
}

