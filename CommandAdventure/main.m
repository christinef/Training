//
//  main.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/2/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABCCharacter.h"
#import "Person.h"
#import "StockHolding.h"
#import "Portfolio.h"
#import "Sample.h"
#import "NSString+Vowels.h"

int getUserName(char name[]);
int getUserAge(int* age, char name[]);

int main(int argc, const char * argv[])
{
    NSString* string = @"Hello, World!";
    NSLog(@"%@ has %d vowels.\n", string, [string vowelCount]);
    
    
/*    Person* girl = [[Person alloc] init];
     [girl setHeight:5.7];
     [girl setWeight:100];
     float girlBMI = [girl bmiCalculator];
     printf("%f, %.2f, %d\n", girlBMI, [girl height], [girl weight]);
    
    StockHolding* stockmarket = [[StockHolding alloc] init];
    [stockmarket setNumShares:100];
    [stockmarket setPurchasePrice:25.20];
    [stockmarket setCurrentPrice:20.10];
    [stockmarket valueInDollars];
    
    printf("%d, %.2lf, %.2lf, %.2lf\n",[stockmarket numShares], [stockmarket purchasePrice], [stockmarket currentPrice], [stockmarket valueInDollars]);
    
    Portfolio* portfolio = [[Portfolio alloc] init];
    [portfolio addStockShares:110 initialPrice:50.25 currentPrice:50.50];
    [portfolio addExistingStockShares:stockmarket];
    printf("Portfolio Value: %.2lf\n", [portfolio getPortfolioValue]);
    
    Sample* example = [[Sample alloc] initSpecial:@5];
    [example switcher:2];
    
     NSString* foo =@"apples\ngrapes\ntomatoes\nmilk";
     NSArray* names = [foo componentsSeparatedByString:@"\n"];
     //NSLog(@"%@", [names objectAtIndex:1]);
     for (NSString* name in names){
         NSLog(@"%@", name);
     }
     ABCCharacter* user = [[ABCCharacter alloc] init];
     int b = [user doSomething:5 andAnother:10];
     char k = [user doSomethingElse:5 andAnother:37];
     printf("%d %c\n", b, k);
     
     NSDateComponents* dob = [[NSDateComponents alloc] init];
     [dob setYear:1994];
     [dob setMonth:6];
     [dob setDay:1];
     NSCalendar* cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
     NSDate* dobdiff = [cal dateFromComponents:dob];
     NSDateComponents* comps = [[NSDateComponents alloc] init];
     [comps setYear:2013];
     [comps setMonth:7];
     [comps setDay:3];
     NSDate* today = [cal dateFromComponents:comps];
     double d = [today timeIntervalSinceDate:dobdiff];
     NSLog(@"%lf", d);
     char name[100];
     name[0] = '\0';
     int age = 0;
     NSLog(@"What is your name?\n");
     getUserName(name);
     getUserAge(&age, name);
     NSLog(@"Hello %s, age %d!\n", name, age);
     
     NSLog(@"You see two doors side by side. Do you enter the left or the right door?");
     NSLog(@"Left: press 1.");
     NSLog(@"Right: press 2.");
     int doorChoice = 0;
     int scannedItemsNum = 0;
     
     while (scannedItemsNum == 0){
        fpurge(stdin);
        scannedItemsNum = scanf("%d", &doorChoice);
     
        if (scannedItemsNum == 0 || doorChoice > 2 || doorChoice < 1){
            NSLog(@"Please choose 1 or 2");
            scannedItemsNum = 0;
        }
     }
     
     if (doorChoice == 1)
     NSLog(@"entered left");
     else
     NSLog(@"entered right");
     */
    return 0;
}

int getUserName(char name[]){
    return scanf("%[^\n]s", name);
}

int getUserAge(int* age, char name[]){
        NSLog(@"Great %s! How old are you?\n", name);
        fpurge(stdin); //purge the buffer
        return scanf("%d", age);
}

