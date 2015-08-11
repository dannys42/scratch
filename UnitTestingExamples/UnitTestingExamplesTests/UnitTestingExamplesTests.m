//
//  UnitTestingExamplesTests.m
//  UnitTestingExamplesTests
//
//  Created by Danny Sung on 08/10/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <Expecta/Expecta.h>

#import "MyString.h"

@interface UnitTestingExamplesTests : XCTestCase

@end

@implementation UnitTestingExamplesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/* our assumption is that input is a string, and that there will be a given string */
- (void)testThatItDoesNotFailWithInput {
    MyString *testString = [[MyString alloc] init];
    testString.string = @"Hello";
    [testString appendWithString:@"Goodbye"];
    //expect that output is HelloGoodbye
    
    testString.string = @"Goodbye";
    [testString appendWithString:@"Hello"];
    //expect that output is GoodbyeHello
}

- (void)testThatItDoesNotFailWithEmptyString {
    MyString *testString = [[MyString alloc] init];
    testString.string = @"Hello";
    [testString appendWithString:@""];
    //expect that output is Hello
    
    testString.string = @"";
    [testString appendWithString:@"Goodbye"];
    //expect that output is Goodbye
    
    testString.string = @"";
    [testString appendWithString:@""];
    //expect that output is @""
}

- (void)testThatItDoesNotFailWithNilString {
    MyString *testString = [[MyString alloc] init];
    testString.string = @"Hello";
    [testString appendWithString:nil];
    //expect that output is Hello
    
    testString.string = nil;
    [testString appendWithString:@"Goodbye"];
    //expect that output is Goodbye
    
    testString.string = nil;
    [testString appendWithString:nil];
    //expect that output is nil
}

- (void)testThatItDoesNotFailWithStringNumbers {
    MyString *testString = [[MyString alloc] init];
    testString.string = @"1234567890";
    [testString appendWithString:@"Numbers"];
    //expect that output is Numbers1234567890
}

@end
