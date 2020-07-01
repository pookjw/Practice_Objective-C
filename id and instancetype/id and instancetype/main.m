//
//  main.m
//  id and instancetype
//
//  Created by pook on 7/1/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // id : Swift의 Any랑 비슷한데, method를 호출할 때 compiler에서 해당 method가 존재하는지 체크하지 않음. 단, runtime에서 존재하지 않는게 확인되면 crash
        // instancetype : NSObject가 들어올 수 있고 compiler에서 method가 들어오는지 체크함
        
        NSArray *foo = [NSArray new];
        id bar = foo;
        NSArray *baz = foo;
        
    }
    return 0;
}
