//
//  MarvelNetworking.h
//  Marvel
//
//  Created by BiaoShu on 2018/3/11.
//  Copyright © 2018年 BiaoShu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef void (^SuccessBlock)(id responseObject);
typedef void (^FailureBlock)(NSString *error);


@interface MarvelNetworking : NSObject

//get method
+ (void)getWithURL:(NSString *)url Params:(NSDictionary *)params success:(SuccessBlock)success failure:(FailureBlock)failure;
//post method
+ (void)postWithURL:(NSString *)url Params:(NSDictionary *)params success:(SuccessBlock)success failure:(FailureBlock)failure;

@end
