//
//  PListUsers.m
//  testing
//
//  Created by dev on 20/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "PListUsers.h"

@implementation PListUsers
@synthesize user = _currentUser;

+(instancetype)current {
    static PListUsers* users = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        users  = [[self alloc] init];
    });
    return users;
}

-(NSMutableArray*)allUsers {
    @autoreleasepool {
        NSMutableArray* currentDic = [[NSMutableArray alloc] init];
        NSString* path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
        NSMutableArray* data = [[NSMutableArray alloc] initWithContentsOfFile: path];
        
        for(NSDictionary* dict in data) {
            PListUser* u = [[PListUser alloc]initWithDictionary:dict];
            [currentDic addObject:u];
        }
        
        return currentDic;
    }
}

-(PListUser*)getUserByName:(NSString*)name {
    @autoreleasepool {
        NSPredicate* filter = [NSPredicate predicateWithFormat:@"name == %@", name];
        NSArray* matchUser = [((NSArray*)[self allUsers]) filteredArrayUsingPredicate:filter];
        return [matchUser count] == 1 ? matchUser[0] : nil;
    }
}

@end
