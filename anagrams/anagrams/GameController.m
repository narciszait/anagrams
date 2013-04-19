//
//  GameController.m
//  anagrams
//
//  Created by Narcis on 4/18/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import "GameController.h"

@implementation GameController{
    //tile lists
    NSMutableArray* _tiles;
    NSMutableArray* _targets;
}

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
    
    //calculate the tile size
    float tileSide=ceilf(kScreenWidth*0.9/(float)MAX(ana1len, ana2len))-kTileMargin;
    
    //get the left margin for first tile
    float xOffset=(kScreenWidth-MAX(ana1len,ana2len)*(tileSide+kTileMargin))/2;
    
    
    //adjust for tile center (instead of the tile's origin)
    xOffset+=tileSide/2;
    
    NSLog(@"offset %f",xOffset);
    
    //1 initialize the tile list
    _tiles=[NSMutableArray arrayWithCapacity:ana1len];
    
    //2 create the tiles
    for(int i=0;i<ana1len;i++){
        NSString* letter=[anagram1 substringWithRange:NSMakeRange(i, 1)];
        
        //3
        if(![letter isEqualToString:@" "]){
            TileView* tile=[[TileView alloc] initWithLetter:letter andSideLenght:tileSide];
            tile.center=CGPointMake(xOffset+i*(tileSide+kTileMargin), kScreenHeight/4*3);
            
            //4
            [self.gameView addSubview:tile];
            [_tiles addObject:tile];
        }
    }
    
}

@end
