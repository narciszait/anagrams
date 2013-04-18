//
//  GameController.m
//  anagrams
//
//  Created by Narcis on 4/18/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(void)dealRandomAnagram{
    //1
    NSAssert(self.level.anagrams, @"no level loaded");
    
    //2 random anagram
    int randomIndex=arc4random()%[self.level.anagrams count];
    NSArray* anaPair=self.level.anagrams[randomIndex];
    
    //3
    NSString* anagram1=anaPair[0];
    NSString* anagram2=anaPair[1];
    
    //4
    int ana1len=[anagram1 length];
    int ana2len=[anagram2 length];
    
    //5
    NSLog(@"phrase[%i]: %@", ana1len, anagram1);
    NSLog(@"phrase[%i]: %@", ana2len, anagram2);
}

@end
