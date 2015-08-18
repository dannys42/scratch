//
//  Shop.m
//  ProtocolSample
//
//  Created by Danny Sung on 08/17/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import "Shop.h"

@interface Shop()
@property (nonatomic, strong) NSMutableArray *inventoryItems;
@end


@implementation Shop


- (void)doMethod1 {
    for(NSObject <ShopItemProtocol> *item in self.inventoryItems) {
        NSNumber *price = @(-1);
        if( [item respondsToSelector:@selector(price)] ) {
            price = item.price;
        }
        NSLog(@"%@ is a %@  For Sale: %d\n", item.name, [item class], price.intValue);
        /*
        if( [item respondsToSelector:@selector(isTasty)] ) {
            BOOL v = [item performSelector:@selector(isTasty)];
        }
         */
    }
    
}

#pragma mark Utilities

- (void)addObject:(NSObject *)object {
    [self.inventoryItems addObject:object];
}

- (NSMutableArray *)inventoryItems {
    if( !_inventoryItems ) {
        _inventoryItems = [[NSMutableArray alloc] init];
    }
    return _inventoryItems;
}

@end
