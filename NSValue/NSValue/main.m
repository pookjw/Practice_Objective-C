//
//  main.m
//  NSValue
//
//  Created by pook on 7/1/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSRect, NSSize, NSPoint
        NSValue *rect = [NSValue valueWithRect:NSMakeRect(0, 5, 10, 10)];
        NSValue *point = [NSValue valueWithPoint:NSMakePoint(0, 0)];
//        NSValue *size = [NSValue valueWithSize:NSMakeSize(10, 10)];
//        NSLog(@"%@", [rect pointValue]);
        NSLog(@"%f", [rect rectValue].size.height);
        NSLog(@"%f", [rect rectValue].origin.x);
        NSLog(@"%f", [rect rectValue].origin.y);
        
        // CGRect, CGSize, CGPoint
//        NSValue *rect_1 = [NSValue valueWithCGRect:CGRectMake(0, 0, 10, 10)];
        
    }
    return 0;
}
