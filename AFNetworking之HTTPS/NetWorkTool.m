//
//  NetWorkTool.m
//  AFNetworking之HTTPS
//
//  Created by 陈高健 on 15/11/24.
//  Copyright © 2015年 陈高健. All rights reserved.
//

#import "NetWorkTool.h"

@implementation NetWorkTool

static NetWorkTool *_instance;
+ (instancetype)sharedNetWorkTool{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance=[[NetWorkTool alloc]initWithBaseURL:nil];
        
        _instance.responseSerializer.acceptableContentTypes= [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
        
        _instance.responseSerializer=[AFHTTPResponseSerializer serializer];
        //这是一个HTTPS的协议的路径,这个时候,需要我们设置一个东西就行了
        _instance.securityPolicy.validatesDomainName=NO;

    });
    return _instance;
}
@end
