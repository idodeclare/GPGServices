//
//  NSSet+FilteredKeys.m
//  GPGServices
//
//  Created by Chris Fraire on 5/17/12.
//  Copyright (c) 2012 Chris Fraire. All rights reserved.
//

#import "NSSet+FilteredKeys.h"
#import "Libmacgpg/GPGKey.h"

@implementation NSSet (FilteredKeys)

- (NSSet *)filteredSetOfKeysUsingValidator:(KeyValidatorT)validator
{
    NSMutableSet *result = [NSMutableSet set];
    for (NSObject *object in self) {
        if ([object isKindOfClass:[GPGKey class]] && validator(object))
            [result addObject:object];
    }
    return result;
}

@end
