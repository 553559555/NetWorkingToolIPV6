//
//  NetWorkingTool.m
//  AFNetworkingIPV6
//
//  Created by 王壮 on 16/8/26.
//  Copyright © 2016年 王壮. All rights reserved.
//

#import "NetWorkingTool.h"
#import <AFNetworking.h>

@implementation NetWorkingTool

static NetWorkingTool *_instance;

+ (instancetype)sharedNetWorkingTool {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[NetWorkingTool alloc] initWithBaseURL:[NSURL URLWithString:@"http://test.liren.com/"]];
        _instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json",@"text/javascript",@"text/plain", nil];
    });
    
    return _instance;
}

- (void)GETRequestURLStrig:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail {
    
    [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}


- (void)POSTRequestURLString:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail {

    [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}


@end
