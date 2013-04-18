//
//  ViewController.h
//  anagrams
//
//  Created by Narcis on 4/17/13.
//  Copyright (c) 2013 Narcis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Level.h"
#import "GameController.h"

@interface ViewController : UIViewController {
   IBOutlet UIImageView* myImageView;
}

@property (retain,nonatomic) IBOutlet UIImageView* myImageView;
@property (strong, nonatomic) GameController* controller;

@end
