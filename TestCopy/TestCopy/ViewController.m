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
//    //测试字符串拷贝
//    [self testStringCopy];
//    //测试字典拷贝
    [self testDictionaryCopy];
//    [self testMutableDictionaryCopy];
//    [self testDictionaryRealDeepCopy];
//    //测试数组拷贝
//    [self testArrayCopy];
//    //测试自定义对象拷贝
//    [self testCustomObjectCopy];
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
}

- (void)testMutableStringCopy {
    NSMutableString *testMuStr1 = [[NSMutableString alloc] initWithString:@"TestMuStr1"];
    NSLog(@"TestMuStr1:%p=%@=%@",testMuStr1,[testMuStr1 class],testMuStr1);
    
    id testMuStr2 = [testMuStr1 copy];
    NSLog(@"testMuStr2:%p=%@=%@",testMuStr2,[testMuStr2 class],testMuStr2);
    
    id testMuStr3 = [testMuStr1 mutableCopy];
    NSLog(@"testMuStr3:%p=%@=%@",testMuStr3,[testMuStr3 class],testMuStr3);
}

#pragma mark - 字典

/**
 测试字典拷贝
 */
- (void)testDictionaryCopy {
    printf("\n");
    NSMutableString *mutableValue = [[NSMutableString alloc] initWithString:@"value"];
    
    NSDictionary *testDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:mutableValue, @"key", nil];
    NSLog(@"testDict1:%p=%@=%@", testDict1, [testDict1 class], testDict1);
    for (NSString *key in [testDict1 allKeys]) {
        NSLog(@"value1:%p=%@",testDict1[key], testDict1[key]);
    }
    
    id testDict2 = [testDict1 copy];
    NSLog(@"testDict2:%p=%@=%@", testDict2, [testDict2 class], testDict2);
    for (NSString *key in [testDict2 allKeys]) {
        NSLog(@"value2:%p=%@",testDict2[key], testDict2[key]);
    }
    
    NSDictionary *copy1 = [[NSDictionary alloc] initWithDictionary:testDict1];
    NSLog(@"copy1:%p=%@=%@", copy1, [copy1 class], copy1);
    for (NSString *key in [copy1 allKeys]) {
        NSLog(@"copy1:%p=%@",copy1[key], copy1[key]);
    }
    
    NSDictionary *copy2 = [[NSDictionary alloc] initWithDictionary:testDict1 copyItems:YES];
    NSLog(@"copy2:%p=%@=%@", copy2, [copy2 class], copy2);
    for (NSString *key in [copy2 allKeys]) {
        NSLog(@"copy2:%p=%@",copy2[key], copy2[key]);
    }
    
    id testDict3 = [testDict1 mutableCopy];
    NSLog(@"testDict3:%p=%@=%@", testDict3, [testDict3 class], testDict3);
    for (NSString *key in [testDict3 allKeys]) {
        NSLog(@"value3:%p=%@",testDict3[key], testDict3[key]);
    }
    [testDict3 setValue:@"new" forKey:@"key"];
    NSLog(@"testDict4:%p=%@=%@", testDict3, [testDict3 class], testDict3);
    for (NSString *key in [testDict3 allKeys]) {
        NSLog(@"value4:%p=%@",testDict3[key], testDict3[key]);
    }
}

/**
 测试字典拷贝
 */
- (void)testMutableDictionaryCopy {
    NSMutableDictionary *testMuDict1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"value", @"key", nil];
    NSLog(@"testMuDict1:%p=%@=%@", testMuDict1, [testMuDict1 class], testMuDict1);
    for (NSString *key in [testMuDict1 allKeys]) {
        NSLog(@"value1:%p=%@",testMuDict1[key], testMuDict1[key]);
    }
    
    id testMuDict2 = [testMuDict1 copy];
    NSLog(@"testMuDict2:%p=%@=%@", testMuDict2, [testMuDict2 class], testMuDict2);
    for (NSString *key in [testMuDict2 allKeys]) {
        NSLog(@"value2:%p=%@",testMuDict2[key], testMuDict2[key]);
    }
    
    id testMuDict3 = [testMuDict1 mutableCopy];
    NSLog(@"testMuDict3:%p=%@=%@", testMuDict3, [testMuDict3 class], testMuDict3);
    for (NSString *key in [testMuDict3 allKeys]) {
        NSLog(@"value3:%p=%@",testMuDict3[key], testMuDict3[key]);
    }
    
    [testMuDict3 setValue:@"new" forKey:@"key"];
    NSLog(@"testMuDict4:%p=%@=%@", testMuDict3, [testMuDict3 class], testMuDict3);
    for (NSString *key in [testMuDict3 allKeys]) {
        NSLog(@"value4:%p=%@",testMuDict3[key], testMuDict3[key]);
    }
}

/**
 完全Copy
 */
- (void)testDictionaryRealDeepCopy {
    NSDictionary *testDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"value", @"key", nil];
    NSLog(@"testDict1:%p=%@=%@", testDict1, [testDict1 class], testDict1);
    for (NSString *key in [testDict1 allKeys]) {
        NSLog(@"value1:%p=%@",testDict1[key], testDict1[key]);
    }
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:testDict1];
    id testDict2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    NSLog(@"testDict2:%p=%@=%@", testDict2, [testDict2 class], testDict2);
    for (NSString *key in [testDict2 allKeys]) {
        NSLog(@"value2:%p=%@",testDict2[key], testDict2[key]);
    }
}

#pragma mark - 数组
/**
 测试数组拷贝
 */
- (void)testArrayCopy {
    printf("\n");
    
    NSArray *testArray1 = [NSArray arrayWithObjects:@"testArray1", nil];
    NSLog(@"testArray1:%p=%@=%@", testArray1, [testArray1 class], testArray1);
    for (id object in testArray1) {
        NSLog(@"value1:%p=%@",object, object);
    }
    
    id testArray2 = [testArray1 copy];
    NSLog(@"testArray2:%p=%@=%@", testArray2, [testArray2 class], testArray2);
    for (id object in testArray2) {
        NSLog(@"value2:%p=%@",object, object);
    }
    
    id testArray3 = [testArray1 mutableCopy];
    NSLog(@"testArray3:%p=%@=%@", testArray3, [testArray3 class], testArray3);
    for (id object in testArray3) {
        NSLog(@"value3:%p=%@",object, object);
    }
    
    printf("\n");
    
    NSMutableArray *testMuArray1 = [[NSMutableArray alloc] initWithObjects:@"testMuArray1", nil];
    NSLog(@"testMuArray1:%p=%@=%@", testMuArray1, [testMuArray1 class], testMuArray1);
    for (id object in testMuArray1) {
        NSLog(@"value1:%p=%@",object, object);
    }
    
    id testMuArray2 = [testMuArray1 copy];
    NSLog(@"testMuArray2:%p=%@=%@", testMuArray2, [testMuArray2 class], testMuArray2);
    for (id object in testMuArray2) {
        NSLog(@"value2:%p=%@",object, object);
    }
    
    id testMuArray3 = [testMuArray1 mutableCopy];
    NSLog(@"testMuArray3:%p=%@=%@", testMuArray3, [testMuArray3 class], testMuArray3);
    for (id object in testMuArray3) {
        NSLog(@"value3:%p=%@",object, object);
    }
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
