//
//  Shop.h
//  ProtocolSample
//
//  Created by Danny Sung on 08/17/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ShopItemProtocol <NSObject>
@required
- (NSString *)name;
@optional
@property (nonatomic, strong) NSNumber *price;
@end


@interface Shop : NSObject
- (void)addObject:(NSObject <ShopItemProtocol> *)object;
- (void)doMethod1;

@end
