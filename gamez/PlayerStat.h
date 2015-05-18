//
//  PlayerStat.h
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef Emojiz_PlayerStat_h
#define Emojiz_PlayerStat_h

#import <UIKit/UIKit.h>

@interface PlayerStat : UIView

@property NSInteger score;
@property NSInteger lives;

@property IBOutlet UILabel *scoreLabel;
@property IBOutlet UILabel *livesLabel;

- (void)increaseScore:(NSInteger)amount;
- (void)decreaseLives:(NSInteger)amount;

@end

#endif
