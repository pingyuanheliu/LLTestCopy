//
//  ViewController.m
//  TestCopy
//
//  Created by LL on 2018/7/30.
//  Copyright © 2018年 LL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //测试拷贝
    [self testCopyAndMutableCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 测试拷贝
 */
- (void)testCopyAndMutableCopy {
    //测试字符串拷贝
    [self testStringCopy];
    //测试字典拷贝
    [self testDictionaryCopy];
    //测试数组拷贝
    [self testArrayCopy];
    //测试自定义对象拷贝
    [self testCustomObjectCopy];
}

/**
 测试字符串拷贝
 */
- (void)testStringCopy {
    
}

/**
 测试字典拷贝
 */
- (void)testDictionaryCopy {
    
}

/**
 测试数组拷贝
 */
- (void)testArrayCopy {
    
}

/**
 测试自定义对象拷贝
 */
- (void)testCustomObjectCopy {
    
}

@end
