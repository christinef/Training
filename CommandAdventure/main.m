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