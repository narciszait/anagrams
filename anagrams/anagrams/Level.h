//
//  Level.h
//  anagrams
//
//  Created by Narcis on 4/17/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Level : NSObject {
    //int pointsPerTile;
    //int timeToSolve;
    //NSArray *anagrams;
}

@property (assign, nonatomic) int pointsPerTile;
@property (assign, nonatomic) int timeToSolve;
@property (strong, nonatomic) NSArray *anagrams;

+(instancetype)levelWithNum:(int)levelNum;


@end
