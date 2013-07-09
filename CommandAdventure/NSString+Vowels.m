//
//  NSString+Vowels.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import "NSString+Vowels.h"

@implementation NSString (Vowels)
-(int)vowelCount
{
    NSCharacterSet* charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++){
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c])
            sum++;
    }
    return sum;
}
@end