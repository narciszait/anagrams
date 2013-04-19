//
//  TileView.m
//  anagrams
//
//  Created by Narcis on 4/19/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import "TileView.h"

@implementation TileView

//1
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSAssert(NO, @"use initWithLetter:andSideLength instead");
        return nil;
    }
    return self;
}

//2
-(instancetype)initWithLetter:(NSString *)letter andSideLenght:(float)sideLength{
    //the tile background
    UIImage *img=[UIImage imageNamed:@"tile.png"];
    
    //create a new object
    self=[super initWithImage:img];
    
    if (self!=nil){
        //3 resize the tile
        float scale=sideLength/img.size.width;
        self.frame=CGRectMake(0, 0, img.size.width*scale, img.size.height*scale);
        
        //more initialisation here
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
