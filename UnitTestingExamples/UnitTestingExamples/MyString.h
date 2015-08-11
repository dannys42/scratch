//
//  MyString.h
//  UnitTestingExamples
//
//  Created by Danny Sung on 08/10/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyString : NSObject
@property (nonatomic, strong) NSString *string;

/* Append the passed string to the existing string property */
- (void)appendWithString:(NSString *)string;

@end
