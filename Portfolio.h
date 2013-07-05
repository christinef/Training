//
//  Portfolio.h
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface Portfolio : NSObject
{
    NSMutableArray* stockHoldings;
    float portfolioValue;
    int numberOfHoldings;
}

-(void)addStockShares:(int)numOfShares initialPrice:(float)purchPrice currentPrice:(float)currPrice;
-(void)addExistingStockShares:(StockHolding*)stock;
-(void)setPortfolioValue:(float)val;
-(float)getPortfolioValue;
-(void)printPortfolio;

//@property int numberOfHoldings;

@end
