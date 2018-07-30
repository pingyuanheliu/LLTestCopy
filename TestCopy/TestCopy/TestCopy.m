//
//  TestCopy.m
//  TestCopy
//
//  Created by LL on 2018/7/30.
//  Copyright © 2018年 LL. All rights reserved.
//

#import "TestCopy.h"

@interface TestCopy ()<NSCopying, NSMutableCopying>

@end

@implementation TestCopy

- (id)copyWithZone:(NSZone *)zone {
    TestCopy *test = [[[self class] alloc] init];
    test.name = _name;
    test.sex = _sex;
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    TestCopy *test = [[[self class] alloc] init];
    test.name = _name;
    test.sex = _sex;
    return self;
}

@end
