//
//  ViewController.h
//  Emojiz
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

@property IBOutlet PlayerStat *statView;
@property IBOutlet UIView *menyView;
@property Player *player;

- (IBAction)startGame:(id)sender;
- (IBAction)endGame:(id)sender;

- (void)chooseEmoji:(NSString *)character;

@end

