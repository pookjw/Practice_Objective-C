//
//  main.m
//  NSError
//
//  Created by pook on 7/1/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfFile:@"hello.txt" encoding:nil error:&error];
        NSLog(@"%@", error.localizedDescription);
    }
    return 0;
}
