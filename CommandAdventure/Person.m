//
//  Person.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import "Person.h"

@implementation Person
- (float) bmiCalculator{
    return weight/(height * height);
}

/*- (void) setHeight:(float)h{
    height = h;
}

- (void) setWeight:(int)w{
    weight = w;
}

- (float) getHeight{
    return height;
}

- (int) getWeight{
    return weight;
}
*/

@synthesize height, weight;


@end
