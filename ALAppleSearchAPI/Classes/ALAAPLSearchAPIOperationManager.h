//
//  ALAAPLSearchAPIOperationManager.h
//  ALAppleSearchAPI
//
//  Created by Jeffrey Jackson on 12/18/14.
//  Copyright (c) 2014 AutoLean, Inc. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface ALAAPLSearchAPIOperationManager : AFHTTPRequestOperationManager

- (void)searchSoftwareWithTerm:(NSString *)term
                    parameters:(NSDictionary *)parameters
                      complete:(void (^)(id, NSError *))block;
@end
