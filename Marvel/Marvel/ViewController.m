//
//  ViewController.m
//  Marvel
//
//  Created by BiaoShu on 2018/3/8.
//  Copyright © 2018年 BiaoShu. All rights reserved.
//

#import "ViewController.h"
#import "MarvelNetworking.h"
#import "NSString+MD5.h"
#define PUBLIC_API_KEY      @"9a150a212b2d2e2ddedd9547b3b3df11"
#define PRIVATE_API_KEY     @"54824c2b7b2ce5bfb9f2e920a197af8c64fe274b"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self GetTest];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)GetTest
{
    NSString *URL = @"http://gateway.marvel.com/v1/public/comics?";
    
    NSUInteger timestamp = [[NSDate new] timeIntervalSince1970];
    NSString *hash = [NSString stringWithFormat:@"%lu%@%@", (unsigned long)timestamp, PRIVATE_API_KEY, PUBLIC_API_KEY];
    
    NSDictionary *parameters = @{
                                 @"apikey": PUBLIC_API_KEY,
                                 @"ts": @(timestamp),
                                 @"hash": [hash md5]
                                 };
    
    [MarvelNetworking getWithURL:URL Params:parameters success:^(id responseObject) {
        NSLog(@"GET_success____%@", responseObject);
    } failure:^(NSString *error) {
        NSLog(@"GET_failure____%@", error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
