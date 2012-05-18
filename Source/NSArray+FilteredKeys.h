//
//  NSArray+FilteredKeys.h
//  GPGServices
//
//  Created by Chris Fraire on 5/17/12.
//  Copyright (c) 2012 Chris Fraire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KeyValidator.h"

@interface NSArray (FilteredKeys)

- (NSSet *)filteredSetOfKeysUsingValidator:(KeyValidatorT)validator;

@end
