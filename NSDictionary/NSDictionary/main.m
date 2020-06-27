//
//  main.m
//  NSDictionary
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *ships = @{
            @"Serenity": @"Firefly",
            @"Enterprise": @"Star Trek",
            @"Executor": @"Star Wars"
        };
        
        NSDictionary *ships_2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Serenity", @"Firefly", @"Enterprise", @"Star Trek", @"Executor", @"Star Wars", nil];
        
        for (NSString *key in ships) {
            NSLog(@"The ship %@ features in %@", key, ships[key]);
        }
        
        for (NSString *key in ships) {
            NSLog(@"The ship %@ features in %@", key, [ships objectForKey:key]);
        }
        
        // count, allKeys, allValues, enumerateKeysAndObjectsUsingBlock
    }
    return 0;
}
