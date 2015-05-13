//
//  ViewController.h
//  gamez
//
//  Created by Emma Nimstad on 30/4/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "PlayerStat.h"
#import "FallingObject.h"
#import "Sweet.h"
#import "Fruit.h"

@interface ViewController : UIViewController {
    NSTimer *objectsCreator;
}

@property IBOutlet UIButton *startButton;
@property NSArray *fallingObjects;
@property Player *player;
@property PlayerStat *playerState;

@end

