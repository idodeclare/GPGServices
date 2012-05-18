//
//  NSArray+FilteredKeys.m
//  GPGServices
//
//  Created by Chris Fraire on 5/17/12.
//  Copyright (c) 2012 Chris Fraire. All rights reserved.
//

#import "NSArray+FilteredKeys.h"
#import "NSSet+FilteredKeys.h"
#import "Libmacgpg/GPGKey.h"

@implementation NSArray (FilteredKeys)

- (NSSet *)filteredSetOfKeysUsingValidator:(KeyValidatorT)validator
{
    return [[NSSet setWithArray:self] filteredSetOfKeysUsingValidator:validator];
}

@end
