//
//  GameController.h
//  anagrams
//
//  Created by Narcis on 4/18/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Level.h"

@interface GameController : NSObject {
    
}

//the view to add the game elements to
@property (weak, nonatomic) UIView* gameView;

//the current level
@property (strong, nonatomic) Level* level;

//display a new anagram on the screen
-(void)dealRandomAnagram;

@end
