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
    NSLog(@"What us your name?\n");
    scanf("%s", name);
    NSLog(@"Hello %s!\n", name);
    return 0;
}

