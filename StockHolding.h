//
//  StockHolding.h
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchasePrice;
    float currentPrice;
    int numShares;
}

-(float) costInDollars;
-(float) valueInDollars;

@property float purchasePrice;
@property float currentPrice;
@property int numShares;

@end
