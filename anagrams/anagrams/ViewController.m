//
//  ViewController.m
//  anagrams
//
//  Created by Narcis on 4/17/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myImageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //load background image based on iphone screen
    UIImage* myImage;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    if ([UIScreen mainScreen].scale == 2.f && screenHeight == 568.0f) {
        myImage = [UIImage imageNamed:@"board~568h@2x.jpg"];
        NSLog(@"iphone 5 image");
    } else
        if ([UIScreen mainScreen].scale==2.f && screenHeight == 480.0f) {
            myImage =[UIImage imageNamed:@"board@2x.jpg"];
            NSLog(@"iphone 4 image");
            }
        else
        {
            myImage = [UIImage imageNamed:@"board.jpg"];
            NSLog(@"iphone image");
        }
    [myImageView setImage:myImage];
    
    //load level
    Level* level1=[Level levelWithNum:1];
    NSLog(@"anagrams %@",level1.anagrams);
    
}

-(instancetype)initWithCoder:(NSCoder *)decoder{
    self=[super initWithCoder:decoder];
    if(self!=nil){
        self.controller=[[GameController alloc] init];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
