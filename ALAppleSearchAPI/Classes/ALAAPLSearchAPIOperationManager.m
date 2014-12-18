//
//  ALAAPLSearchAPIOperationManager.m
//  ALAppleSearchAPI
//
//  Created by Jeffrey Jackson on 12/18/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import "ALAAPLSearchAPIOperationManager.h"

#define SearchAPIURL @"https://itunes.apple.com"

@implementation ALAAPLSearchAPIOperationManager

- (void)searchSoftwareWithTerm:(NSString *)term
                    parameters:(NSDictionary *)parameters
                      complete:(void (^)(id, NSError *))block {
   [self GET:[NSString stringWithFormat:@"%@/search?resultCount=100&term=%@&entity=software", SearchAPIURL, [term stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]
                             parameters:parameters
                                success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                   NSDictionary *result = responseObject;
                                   if (block) block(result, nil);
                                }
                                failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                   if (block) block(nil, error);
                                }];
   
}

@end
