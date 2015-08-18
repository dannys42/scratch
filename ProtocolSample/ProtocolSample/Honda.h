//
//  Honda.h
//  ProtocolSample
//
//  Created by Danny Sung on 08/17/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shop.h"

@interface Honda : NSObject <ShopItemProtocol>

- (NSString *)name;

- (BOOL)hasFourDoors;

@end
