//
//  AppConfig
//  testing
//
//  Created by dev on 17/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "AppConfig.h"

@implementation AppConfig
+(NSMutableDictionary*)current {
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"AppConfig" ofType:@"plist"];
    return [[NSMutableDictionary alloc] initWithContentsOfFile: plistPath];
}

+(id)getValueByKey:(NSString*)key {
    return [[AppConfig current] objectForKey:key];
}
@end
