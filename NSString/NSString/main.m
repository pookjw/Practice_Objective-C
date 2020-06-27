//
//  main.m
//  NSString
//
//  Created by pook on 6/27/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Practice NSString
        NSInteger a = 10;
        NSLog(@"%ld", a);
        NSLog(@"%d", a);
        
        NSString *foo = @"Hello, world!";
        NSInteger number = 42;
        NSString *output = [NSString stringWithFormat:@"You picked %ld", (long)number];
        NSLog(@"%@", output);
        
        NSString *output2 = [[NSString alloc] initWithFormat:@"%@", output];
        NSLog(@"%@", output2);
        
        NSString *test_str = [[NSString alloc] initWithContentsOfFile:@"/Users/pook/Desktop/test.txt" usedEncoding:nil error:nil];
        NSLog(@"%@", test_str);
        
        NSString *test1 = @"Hello";
        NSString *test2 = [test1 stringByReplacingOccurrencesOfString:@"Hello" withString:@"Hi"];
        NSLog(@"%@", test2);
        NSString *test3 = [test1 stringByAppendingString:@" World"];
        NSLog(@"%@", test3);
        NSString *test4 = [test1 substringFromIndex:2];
        NSLog(@"%@", test4);
        NSString *test5 = [test1 substringToIndex:2];
        NSLog(@"%@", test5);
        
        NSArray *test6 = [test1 componentsSeparatedByString:@"l"];
        NSLog(@"%@", test6);
        
        NSInteger test7 = [test1 integerValue];
        NSLog(@"%ld", test7); // 0
        
        NSString *test8 = [[NSString alloc] initWithFormat:@"%ld", (long)300];
        NSInteger test9 = [test8 integerValue]; // 300
        NSLog(@"%ld", test9);
        
        // boolValue: convert a string to a boolean. Returns true if the string starts with Y, y, T, t, or the digits 1 to 9.
        NSString *test10 = [[NSString alloc] initWithString:@"Yabcjkjdke"];
        Boolean test11 = [test10 boolValue];
        NSLog(@"%d", test11); // 1
        
        NSMutableString *test12 = [@"Oh" mutableCopy];
        NSMutableString *test13 = [NSMutableString stringWithFormat:@""];
        NSLog(@"%@", test12);
        [test12 setString:@"Something else"];
        NSLog(@"%@", test12);
        
        NSString *longStrong = [NSMutableString stringWithCapacity:4096];
        
        NSLog(@"%@", [NSString class]); // Say object name
        /*
         • NSStringFromClass(): Give it a class name, e.g. [myObject class], and it will return “MyObject”.
         • NSStringFromRect(): Give it a CGRect and get back the origin and size in one string.
         • NSStringFromSize(): Give it a CGSize and get back the width and height values.
         • NSStringFromPoint(): Give it a CGPoint and get back the X and Y coordinates.
         */
        
    }
    return 0;
}
