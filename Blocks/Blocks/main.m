//
//  main.m
//  Blocks
//
//  Created by pook on 7/1/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^printGreeting)(void) = ^{
            NSLog(@"Hello!");
        };
        printGreeting();
        
        //
        
        NSString* (^getGreeting)(void) = ^{
            return @"Hello!" ;
        };
        NSLog(@"%@", getGreeting());
        
        //
        
        NSString* (^getNameAndGreet)(NSString *) = ^(NSString *name){
            return [NSString stringWithFormat:@"Hello, %@!", name];
        };
        NSLog(@"%@", getNameAndGreet(@"Jack"));
        
        //
        
        NSString* (^farewellToName)(NSString *);
        farewellToName = ^(NSString *name) {
            return [NSString stringWithFormat:@"%@", name];
        };
        NSLog(@"%@", farewellToName(@"Sam"));
        
        //
        
        farewellToName = ^(NSString *name) {
            return [NSString stringWithFormat:@"Don't let me go..."];
        };
        NSLog(@"%@", farewellToName(@""));
        
        //
        
        typedef NSString* (^MyBlock)(NSString*);
        MyBlock getMyName = ^(NSString *name){
            return [NSString stringWithFormat:@"%@", name];
        };
        
        // Capturing values
        NSString *name = @"Zaphod";
        NSString* (^captureThatName)(void) = ^{
            return name;
        };
        NSLog(@"%@", captureThatName());
        
        NSMutableString *name_2 = [NSMutableString stringWithFormat:@""];
        void (^changeName2)(void) = ^{
            [name_2 setString:@"1"];
        };
        changeName2();
        NSLog(@"%@", name_2);
        
        void (^changeMyName2_2)(void) = ^{
//            name_2 = [NSMutableString stringWithFormat:@""];
            // You can't modify!
        };
        
        // Modify a value inside block... (__ block)
        NSString __block *name_3 = [NSString stringWithFormat:@""];
        void (^changeName3)(void) = ^{
            name_3 = [NSString stringWithFormat:@"d"];
        };
        
        // weak
        NSString * __weak weakNSString = @"test";
        NSLog(@"%@", weakNSString);
    }
    return 0;
}
