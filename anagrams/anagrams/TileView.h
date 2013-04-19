//
//  TileView.h
//  anagrams
//
//  Created by Narcis on 4/19/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TileView : UIImageView

@property (strong, nonatomic, readonly) NSString* letter;
@property (assign, nonatomic) BOOL isMatched;

-(instancetype)initWithLetter:(NSString*)letter andSideLenght:(float)sideLength;

@end
