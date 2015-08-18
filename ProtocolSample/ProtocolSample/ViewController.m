//
//  ViewController.m
//  ProtocolSample
//
//  Created by Danny Sung on 08/17/2015.
//  Copyright (c) 2015 ACME Industries. All rights reserved.
//

#import "ViewController.h"
#import "Shop.h"
#import "Orange.h"
#import "Honda.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Shop *shop = [[Shop alloc] init];
    
    Orange *o;
    Honda *h;
    
    o = [[Orange alloc] init]; o.name = @"o.A"; o.price = @(10);  [shop addObject:o];
    h = [[Honda alloc] init]; [shop addObject:h];
    o = [[Orange alloc] init]; o.name = @"o.B"; o.price = @(20);  [shop addObject:o];
    
    [shop doMethod1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
