//
//  main.m
//  Pointers
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>
#define M_PI 3.14159265358979323846264338327950288

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const i = 10;
//        i = 20;
        
        // Same, and pointer can be changed.
        const NSString *first = @"Hello";
        first = @"World";
        
        NSString const *second = @"Hello";
        second = @"World";
        
        NSString const *third = @"Hello";
        NSLog(@"%p", third);
        
        third = @"World";
        NSLog(@"%p", third);
        
        NSString * const fourth = @"Hello";
//        fourth = @"World"; // error
        
        NSLog(@"%.2f", M_PI);
    }
    return 0;
}
