//
//  NetworkTool.h
//  WeiZhi
//
//  Created by qr on 15/10/8.
//  Copyright © 2015年 qinrong. All rights reserved.
//

#import "NetworkTool.h"

@implementation NetworkTool


+ (instancetype)sharedNetworkTool{
    
    static NetworkTool * _instancetype = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instancetype = [[NetworkTool alloc] init];
        
        _instancetype.requestSerializer = [AFJSONRequestSerializer serializer];
        
        _instancetype.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html" ,nil];
        
    });
    
    return _instancetype;
}


- (void)requestWithUrlstring:(NSString *)urlstring method:(NSString *)method parameters:(NSDictionary *)parameters callBack:(void(^)(id responseObject))callBack{
    
    void(^success)(NSURLSessionDataTask * , id) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject){
        callBack(responseObject);
    };
    
    void(^failure)(NSURLSessionDataTask *, NSError *) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
       // NSLog(@"请求错误:%@",error);
        callBack(nil);
    };
    
    if ([method isEqualToString:@"GET"]) {
        
        [self GET:urlstring parameters:parameters progress:nil success:success failure:failure];
    }
    
    if ([method isEqualToString:@"POST"]) {
        [self POST:urlstring parameters:parameters progress:nil success:success failure:failure];
    }

}




@end
