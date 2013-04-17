//
//  Level.m
//  anagrams
//
//  Created by Narcis on 4/17/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import "Level.h"

@implementation Level

+(instancetype)levelWithNum:(int)levelNum{
    //find plist for this level
    NSString *fileName=[NSString stringWithFormat:@"level%i.plist", levelNum];
    NSString *levelPath=[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:fileName];
    
    //load plist file
    NSDictionary *levelDict=[NSDictionary dictionaryWithContentsOfFile:levelPath];
    
    //validation
    NSAssert(levelDict, @"Level config file not found");
    
    //Create level
    Level* l=[[Level alloc] init];
    
    //initialize the object from the dictionary
    l.pointsPerTile=[levelDict[@"pointPerTile"] intValue];
    l.anagrams=levelDict[@"anagrams"];
    l.timeToSolve=[levelDict[@"timeToSolve"]intValue];
    
    return l;
    
}

@end
