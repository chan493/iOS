//
//  PListUser.h
//  testing
//
//  Created by dev on 22/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PListUser : NSObject


@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* address;
@property (strong, nonatomic) NSString* photo;
@property (nonatomic) float latitude;
@property (nonatomic) float longitude;

-(id)initWithDictionary:(NSDictionary*)dict;

@end
