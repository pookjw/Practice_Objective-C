//
//  main.m
//  NSObject
//
//  Created by pook on 7/1/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *people = [@[@"Taylor Swift", @"Adele Qdkins"] mutableCopy];
        
        if ([people isKindOfClass:[NSArray class]]) {
            if ([people respondsToSelector:@selector(removeAllObjects)]) {
                NSLog(@"isKindOfClass respondsToSelector");
            }
        }
        
        if ([[NSArray class] isKindOfClass:[NSObject class]]) {
            NSLog(@"isKindOfClass");
        }
        
        // conformsToProtocol, performSelector
        // [people removeAllObjects]; 대신에 performSelector를 쓰는 이유는 ARC 때문
    }
    return 0;
}
