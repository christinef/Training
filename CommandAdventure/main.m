//
//  main.m
//  CommandAdventure
//
//  Created by Christine Franks on 7/2/13.
//  Copyright (c) 2013 Christine Franks. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    char name[100];
    int age = 0;
    int errors = 0;
    NSLog(@"What us your name?\n");
    scanf("%[^\n]s", name);
    
    while (errors == 0) {
        NSLog(@"Great! How old are you?\n");
        fpurge(stdin);
        errors = scanf("%d", &age);
        if (errors != 0) {
            NSLog(@"Hello %s, age %d!\n", name, age);
        }
    }
    return 0;
}

