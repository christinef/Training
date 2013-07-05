//
//  StockHolding.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

-(float)costInDollars{
    return numShares*purchasePrice;
}

-(float)valueInDollars{
    return numShares*currentPrice;
}

@synthesize purchasePrice, currentPrice, numShares;

@end
