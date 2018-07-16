//
//  LXHttpTool.m
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import "LXHttpTool.h"
#import "LXUploadParam.h"
#import <AFNetworking/AFNetworking.h>

@implementation LXHttpTool

//发送get请求
+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error))failure{
    
    // 创建请求管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    mgr.requestSerializer.timeoutInterval = 30;
    mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    //清除头部赋值
    [mgr.requestSerializer clearAuthorizationHeader];
    
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain",@"application/octet-stream",nil];
    
    //修改block的线程
    mgr.completionQueue = dispatch_get_global_queue(0, 0);
    
    [mgr GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        // AFN请求成功时候调用block
        // 先把请求成功要做的事情，保存到这个代码块
        if (success) {
            success(responseObject);
        }
        DLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}


//发送post请求
+ (void)POST:(NSString *)URLString
  parameters:(id)parameters
     success:(void (^)(id responseObject))success
     failure:(void (^)(NSError *error))failure{
    
    //创建请求管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    //设置超时时间
    mgr.requestSerializer.timeoutInterval = 30;
    mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
    //清除头部赋值
    [mgr.requestSerializer clearAuthorizationHeader];
    
    //#warning mark -TODO:"测试VIP数据用"。
    //    [mgr.requestSerializer setValue:@"111" forHTTPHeaderField:kAccessToken];
    
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain",@"application/octet-stream",nil];
    
    //修改block的线程
    mgr.completionQueue = dispatch_get_global_queue(0, 0);
    
    [mgr POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            success(responseObject);
        }
        DLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

//上传请求
+ (void)UPLOAD:(NSString *)URLString
    parameters:(id)parameters upload:(LXUploadParam *)param
       success:(void (^)(id responseObject))success
       failure:(void (^)(NSError *error))failure{
    
    //注意：以后如果一个方法，要传很多参数，就把参数包装成一个模型
    // 创建请求管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    mgr.requestSerializer.timeoutInterval = 30;
    mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    //清除头部赋值
    [mgr.requestSerializer clearAuthorizationHeader];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain",@"application/octet-stream",nil];
    
    //修改block的线程
    mgr.completionQueue = dispatch_get_global_queue(0, 0);
    
    [mgr POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        //上传文件拼接到formdata
        /*
         FileData:要上传的文件的文件文进制数据
         name:上传参数名称
         filename : 上传到服务器的文件名称
         mimeType: 文件类型
         */
        [formData appendPartWithFileData:param.data name:param.name fileName:param.fileName mimeType:param.mimeType];
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
        DLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)UPLOAD:(NSString *)URLString
    parameters:(id)parameters
        photos:(NSArray<LXUploadParam *> *)photos success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure{
    
    
    // 创建请求管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    mgr.requestSerializer.timeoutInterval = 30;
    mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    //清除头部赋值
    [mgr.requestSerializer clearAuthorizationHeader];
    
    [mgr.requestSerializer setValue:@"0" forHTTPHeaderField:@"platform"];
    
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain",@"application/octet-stream",nil];
    
    //修改block的线程
    mgr.completionQueue = dispatch_get_global_queue(0, 0);
    
    [mgr POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
        //上传的文件全部拼接到formData
        for (int i = 0; i < photos.count; i ++){
            LXUploadParam *uploadParam = photos[i];
            [formData appendPartWithFileData:uploadParam.data name:uploadParam.name fileName:uploadParam.fileName mimeType:uploadParam.mimeType];
        }
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
        DLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
