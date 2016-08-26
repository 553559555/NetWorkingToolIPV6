//
//  NetWorkingTool.h
//  AFNetworkingIPV6
//
//  Created by 王壮 on 16/8/26.
//  Copyright © 2016年 王壮. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface NetWorkingTool : AFHTTPSessionManager

+ (instancetype)sharedNetWorkingTool;

- (void)GETRequestURLStrig:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail;

- (void)POSTRequestURLString:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail;

@end
