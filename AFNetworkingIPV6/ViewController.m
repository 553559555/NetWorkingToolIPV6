//
//  ViewController.m
//  AFNetworkingIPV6
//
//  Created by 王壮 on 16/8/26.
//  Copyright © 2016年 王壮. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkingTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{@"mobile_phone" : @"18504626112"};
    
    [[NetWorkingTool sharedNetWorkingTool] POSTRequestURLString:@"paymaster/getCode" andParameters:dict andSucces:^(id response) {
        NSLog(@"%@", response);
    } andFail:^(NSError *err) {
        NSLog(@"%@", err);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
