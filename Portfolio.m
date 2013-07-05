//
//  Portfolio.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/3/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

-(id) init{
    self = [super init];
    portfolioValue = 0;
    if (self != nil){
        stockHoldings = [[NSMutableArray alloc] init];
        self->numberOfHoldings = 0;
    }
    return self;
}

-(void)addStockShares:(int)numOfShares initialPrice:(float)purchPrice currentPrice:(float)currPrice{
    StockHolding* stock = [[StockHolding alloc] init];
    [stock setNumShares:numOfShares];
    [stock setCurrentPrice:currPrice];
    [stock setPurchasePrice:purchPrice];
    [stockHoldings addObject: stock];
    numberOfHoldings++;
}

-(void)addExistingStockShares:(StockHolding*)stock{
    [stockHoldings addObject:stock];
    numberOfHoldings++;
}

-(void)setPortfolioValue:(float)val{
    portfolioValue = val;
}

-(float)getPortfolioValue{
    //calculate value
    if (portfolioValue == 0)
    {
        for(StockHolding* sh in stockHoldings)
            portfolioValue+= [sh valueInDollars];
    }
    return portfolioValue;
}

-(void)printPortfolio{
    int counter = 1;
    for (StockHolding* ptr in stockHoldings){
        printf("%d: %d, %.2lf, %.2lf\n", counter, [ptr numShares], [ptr purchasePrice], [ptr currentPrice]);
        counter++;
    }
}

@end
