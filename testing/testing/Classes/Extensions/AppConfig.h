//
//  AppConfig
//  testing
//
//  Created by dev on 17/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppConfig : NSObject

+(NSMutableDictionary*)current;
+(id)getValueByKey:(NSString*)key;

@end
