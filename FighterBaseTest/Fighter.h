//
//  Fighter.h
//  FighterBaseTest
//
//  Created by Cory Carter on 4/22/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fighter : NSObject

- (id)initWithJSONDictionary:(NSDictionary *)dict;

@property(strong, nonatomic) NSString *Name;
@property(strong, nonatomic) NSString *Origin;
@property(strong, nonatomic) NSString *Age;
@property(strong, nonatomic) NSString *Height;
@property(strong, nonatomic) NSString *Weight;
@property(strong, nonatomic) NSString *Game;
@property(strong, nonatomic) NSData   *Image;

@end