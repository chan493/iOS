//
//  PListUser.m
//  testing
//
//  Created by dev on 22/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "PListUser.h"
#import <objc/runtime.h>

@implementation PListUser

-(instancetype)initWithDictionary:(NSDictionary*)dic{
    @autoreleasepool {
        if (self = [super init]) {
            for (NSString* key in dic.allKeys) {
                if ([key isEqualToString: @"Location"]) {
                    NSDictionary* locationDic = (NSDictionary*) dic[key];
                    [self setValue:locationDic[@"Longitude"] forKey:@"longitude"];
                    [self setValue:locationDic[@"Latitude"] forKey:@"latitude"];
                } else if([key isEqualToString:@"Photo"]) {
                    [self setValue: [[NSBundle mainBundle] pathForResource:[[dic[key] lastPathComponent] stringByDeletingPathExtension] ofType: [dic[key] pathExtension] inDirectory: [dic[key] stringByDeletingLastPathComponent]] forKey:@"photo"];
                } else {
                    [self setValue:dic[key] forKey:[key lowercaseString]];
                }
            }
        }
        return self;
    }
}

@end
