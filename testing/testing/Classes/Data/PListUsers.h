//
//  PListUsers.h
//  testing
//
//  Created by dev on 20/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PListUser.h"

@interface PListUsers : NSObject {
    PListUser* user;
}

@property(strong, nonatomic) PListUser* user;

+(instancetype)current;
-(NSMutableArray*)allUsers;
-(PListUser*)getUserByName:(NSString*)name;

@end
