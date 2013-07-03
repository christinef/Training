//
//  main.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/2/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>
int getUserName(char name[]);
int getUserAge(int* age, char name[]);

int main(int argc, const char * argv[])
{
    char name[100];
    name[0] = '\0';
    int age = 0;
    NSLog(@"What us your name?\n");
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

