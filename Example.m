//
//  Example.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/5/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import "Example.h"

@implementation Example
-(id) init
{
    self = [super init];
    if(self) {
        _number =@3;
        [self setNumber:@5];
        self.number = @7;
        NSLog(@"%@", [self number]);
    }
    return self;
}
@end
