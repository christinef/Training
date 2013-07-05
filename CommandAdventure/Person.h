//
//  Person.h
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float height;
    int weight;
}



//- (void)setHeight:(float)h;
//- (void)setWeight:(int)w;
- (float)bmiCalculator;

//- (float)height;
//- (int)weight;

@property float height;
@property int weight;

@end
