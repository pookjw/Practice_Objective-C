//
//  main.m
//  Basic_syntax
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 10;
        const int b = 10;
        NSString *str = @"Reject common sense to make the impossible!";
        NSArray *array = @[@"Hello", @"World"];
        
        if (a == 10) {
            NSLog(@"Hello, World!");
        }
        
        if (b == 10)
            NSLog(@"Hello, World!");
        else
            NSLog(@"Goodbye!");
        
        if (b == 10) NSLog(@"Hello, World!");
        
        int c = 20;
        switch (c) {
            case 20:
                NSLog(@"It's 20!");
                break;
            case 40:
                NSLog(@"It's 40!");
                break;
            case 60:
                NSLog(@"It's 60!");
                break;
            default:
                NSLog(@"It's something else.");
        }
        
        switch (c) {
            case 1 ... 30:
                NSLog(@"It's between 1 and 30!");
                break;
            default:
                NSLog(@"It's something else.");
        }
        
        switch (c) {
            case 10:
//                int foo = 1; // Error
                NSLog(@"It's something else.");
        }
        
        switch (c) {
            case 10:
            {
                int foo = 1;
                NSLog(@"It's something else.");
                break;
            }
            case 20:
                NSLog(@"It's something else.");
                int foo = 1;
        }
        
        NSArray *names = @[@"Laura", @"Janet", @"Kim"];
        
        for (NSString *name in names) {
            NSLog(@"Hello, %@", name);
        }
        
        // C Style
        for (int i = 1; i <= 5; ++i) {
            NSLog(@"%d * %d is %d", i, i, i * i);
        }
        
        // Nil coalescing
        NSString *name = nil;
        NSLog(@"Hello, %@!", name ?: @"Annonymous");
    }
    return 0;
}
