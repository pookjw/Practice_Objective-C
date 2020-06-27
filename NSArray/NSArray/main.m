//
//  main.m
//  NSArray
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *villains = @[@"Weeping Angels", @"Cybermen", @"Daleks", @"Vashta Nerada"];
        
        for (NSString *villain in villains) {
            NSLog(@"Can the Doctor defeat the %@? Yes he can!", villain);
        }
        
        NSArray *villains_2 = [NSArray arrayWithObjects:@"Weeping Angels", @"Cybermen", @"Daleks", nil];
        
        for (NSString *villain in [villains_2 reverseObjectEnumerator]) {
            NSLog(@"%@", villain);
        }
        
        NSLog(@"%@", villains_2[2]);
        NSLog(@"%@", [villains_2 objectAtIndex:2]);
        NSLog(@"%ld", (long)[villains_2 count]);
        NSLog(@"%ld", (long)[villains_2 indexOfObject:@"Daleks"]);
        NSLog(@"%@", [villains_2 componentsJoinedByString:@", "]);
        
        NSMutableArray *villains_3 = [villains_2 mutableCopy];
        [villains_3 insertObject:@"The Silence" atIndex:1];
        [villains_3 removeObjectAtIndex:2];
        [villains_3 removeAllObjects];
        
        // Sorting
        NSArray *sorted = [villains sortedArrayUsingSelector:@selector(compare:)];
        
        
        /*
         makeObjectsPerformSelector : designed to run a method on every item in an array
         [[self.view subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
         */
        
        [villains enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"%@", obj);
        }];
        
        NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id obj, NSDictionary *bindings) {
            return [[obj componentsSeparatedByString:@" "] count] == 2;
        }];
        NSArray *twoWorldVillains = [villains filteredArrayUsingPredicate:predicate];
        
        NSArray *numbers = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, nil];
        NSNumber *sum = [numbers valueForKeyPath:@"@sum.self"];
        NSNumber *avg = [numbers valueForKeyPath:@"@avg.self"];
        NSNumber *min = [numbers valueForKeyPath:@"@min.self"];
        NSNumber *max = [numbers valueForKeyPath:@"@max.self"];
    }
    return 0;
}
