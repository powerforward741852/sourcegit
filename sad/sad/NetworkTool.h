//
//  NetworkTool.h
//  WeiZhi
//
//  Created by qr on 15/10/8.
//  Copyright © 2015年 qinrong. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface NetworkTool : AFHTTPSessionManager

//单例
+ (instancetype)sharedNetworkTool;

//请求
- (void)requestWithUrlstring:(NSString *)urlstring method:(NSString *)method parameters:(NSDictionary *)parameters callBack:(void(^)(id responseObject))callBack;



@end
