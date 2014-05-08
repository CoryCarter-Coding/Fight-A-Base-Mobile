//
//  Fighter.m
//  FighterBaseTest
//
//  Created by Cory Carter on 4/22/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import "Fighter.h"

@implementation Fighter

// Init the object with information from a dictionary
- (id)initWithJSONDictionary:(NSDictionary *)dict
{
    if(self = [self init])
    {
        // Assign all properties with keyed values from the dictionary
        _Name       = [dict objectForKey:@"Name"];
        _Origin     = [dict objectForKey:@"Origin"];
        _Age        = [dict objectForKey:@"Age"];
        _Height     = [dict objectForKey:@"Height"];
        _Weight     = [dict objectForKey:@"Weight"];
        _Game       = [dict objectForKey:@"Game"];
        _Image      = [dict objectForKey:@"Image"];
    }
    
    return self;
}

@end
