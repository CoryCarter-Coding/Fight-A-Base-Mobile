//
//  JSONHelper.h
//  FighterBaseTest
//
//  Created by Cory Carter on 4/22/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONHelper : NSObject

+(NSDictionary *)loadJSONDataFromURL:(NSString *)urlString;

@end
