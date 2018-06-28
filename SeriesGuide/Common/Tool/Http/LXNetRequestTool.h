//
//  LXNetRequestTool.h
//  SeriesGuide
//
//  Created by xuan on 2018/6/28.
//  Copyright © 2018年 duotin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LXHttpTool.h"

@interface LXNetRequestTool : NSObject

+ (void)GET:(NSString *)path
 parameters:(id)parameters
    success:(void (^)(id response))success
    failure:(void (^)(NSError *error))failure;

+ (void)POST:(NSString *)path
  parameters:(id)parameters
     success:(void (^)(id response))success
     failure:(void (^)(NSError *error))failure;

+ (void)UPLOAD:(NSString *)path
    parameters:(id)parameters
   uploadParam:(LXUploadParam *)uploadParam
       success:(void (^)(id response))success
       failure:(void (^)(NSError *error))failure;

+ (void)UPLOAD:(NSString *)path
    parameters:(id)parameters
        photos:(NSArray<LXUploadParam *> *)photos
       success:(void (^)(id response))success
       failure:(void (^)(NSError *error))failure;

@end
