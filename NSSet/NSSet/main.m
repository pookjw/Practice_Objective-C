//
//  main.m
//  NSSet
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet *odd = [NSSet setWithObjects:@1, @3, @5, @7, @9, nil];
        NSSet *even = [NSSet setWithObjects:@2, @4, @6, @8, @10, nil];
        NSSet *combined = [odd setByAddingObjectsFromSet:even];
        NSMutableSet *mutable = [combined mutableCopy];
        [mutable addObject:@0];
        [mutable removeAllObjects];
        
        // NSCountedSet
        NSCountedSet *numbers = [NSCountedSet setWithObjects:@0, @1, nil];
        [numbers addObject:@0];
        [numbers addObject:@0];
        [numbers addObject:@0];
        NSLog(@"%lu", (unsigned long)[numbers countForObject:@0]);
        NSLog(@"%@", numbers);
        
        NSCountedSet *numbers_2 = [NSCountedSet setWithObjects:@0, @0, @0, @0, @0, @0, nil];
        NSLog(@"%@", numbers_2);
        NSLog(@"%lu", (unsigned long)[numbers_2 countForObject:@0]);
    }
    return 0;
}
