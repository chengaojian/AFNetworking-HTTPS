//
//  NetWorkTool.h
//  AFNetworking之HTTPS
//
//  Created by 陈高健 on 15/11/24.
//  Copyright © 2015年 陈高健. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface NetWorkTool : AFHTTPSessionManager


//创建一个单例
+ (instancetype)sharedNetWorkTool;
@end
