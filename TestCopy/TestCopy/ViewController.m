//
//  ViewController.m
//  TestCopy
//
//  Created by LL on 2018/7/30.
//  Copyright © 2018年 LL. All rights reserved.
//

#import "ViewController.h"
#import "TestCopy.h"

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
    NSString *testStr1 = @"TestStr1";
    NSLog(@"testStr1:%p=%@=%@", testStr1, [testStr1 class], testStr1);
    
    id testStr2 = [testStr1 copy];
    NSLog(@"testStr2:%p=%@=%@", testStr2, [testStr2 class], testStr2);
    
    id testStr3 = [testStr1 mutableCopy];
    NSLog(@"testStr3:%p=%@=%@", testStr3, [testStr3 class], testStr3);
    
    printf("\n");
    
    NSMutableString *testMuStr1 = [[NSMutableString alloc] initWithString:@"TestMuStr1"];
    NSLog(@"TestMuStr1:%p=%@=%@",testMuStr1,[testMuStr1 class],testMuStr1);
    
    id testMuStr2 = [testMuStr1 copy];
    NSLog(@"testMuStr2:%p=%@=%@",testMuStr2,[testMuStr2 class],testMuStr2);
    
    id testMuStr3 = [testMuStr1 mutableCopy];
    NSLog(@"testMuStr3:%p=%@=%@",testMuStr3,[testMuStr3 class],testMuStr3);
}

/**
 测试字典拷贝
 */
- (void)testDictionaryCopy {
    printf("\n");
    
    NSDictionary *testDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"value", @"key", nil];
    NSLog(@"testDict1:%p=%@=%@", testDict1, [testDict1 class], testDict1);
    
    id testDict2 = [testDict1 copy];
    NSLog(@"testDict2:%p=%@=%@", testDict2, [testDict2 class], testDict2);
    
    id testDict3 = [testDict1 mutableCopy];
    NSLog(@"testDict3:%p=%@=%@", testDict3, [testDict3 class], testDict3);
    
    printf("\n");
    
    NSMutableDictionary *testMuDict1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"value", @"key", nil];
    NSLog(@"testMuDict1:%p=%@=%@", testMuDict1, [testMuDict1 class], testMuDict1);
    
    id testMuDict2 = [testDict1 copy];
    NSLog(@"testMuDict2:%p=%@=%@", testMuDict2, [testMuDict2 class], testMuDict2);
    
    id testMuDict3 = [testDict1 mutableCopy];
    NSLog(@"testMuDict3:%p=%@=%@", testMuDict3, [testMuDict3 class], testMuDict3);
}

/**
 测试数组拷贝
 */
- (void)testArrayCopy {
    printf("\n");
    
    NSArray *testArray1 = [NSArray arrayWithObjects:@"testArray1", nil];
    NSLog(@"testArray1:%p=%@=%@", testArray1, [testArray1 class], testArray1);
    
    id testArray2 = [testArray1 copy];
    NSLog(@"testArray2:%p=%@=%@", testArray2, [testArray2 class], testArray2);
    
    id testArray3 = [testArray1 mutableCopy];
    NSLog(@"testArray3:%p=%@=%@", testArray3, [testArray3 class], testArray3);
    
    printf("\n");
    
    NSMutableArray *testMuArray1 = [[NSMutableArray alloc] initWithObjects:@"testMuArray1", nil];
    NSLog(@"testMuArray1:%p=%@=%@", testMuArray1, [testMuArray1 class], testMuArray1);
    
    id testMuArray2 = [testMuArray1 copy];
    NSLog(@"testMuArray2:%p=%@=%@", testMuArray2, [testMuArray2 class], testMuArray2);
    
    id testMuArray3 = [testMuArray1 mutableCopy];
    NSLog(@"testMuArray3:%p=%@=%@", testMuArray3, [testMuArray3 class], testMuArray3);
}

/**
 测试自定义对象拷贝
 */
- (void)testCustomObjectCopy {
    printf("\n");
    
    TestCopy *test1 = [[TestCopy alloc] init];
    test1.name = @"name";
    test1.sex = @"sex";
    NSLog(@"test1:%p=%@=%@", test1, [test1 class], test1);
    
    id test2 = [test1 copy];
    NSLog(@"test2:%p=%@=%@", test2, [test2 class], test2);
    
    id test3 = [test1 mutableCopy];
    NSLog(@"test3:%p=%@=%@", test3, [test3 class], test3);
}

@end
