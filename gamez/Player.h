//
//  Player.h
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef Emojiz_Player_h
#define Emojiz_Player_h

#import <UIKit/UIKit.h>
#import "PlayerStat.h"

typedef enum PlayerMove {
    PlayerMoveLeft,
    PlayerMoveRight
} PlayerMove;

@interface Player : UILabel

@property NSTimer *timer;
@property PlayerStat *stat;
@property PlayerMove direction;

- (instancetype)initWithPlayerstat:(PlayerStat *)stat;
- (void)createWithEmoji:(NSString *)character;
- (void)setEmoji:(NSString *)character;

- (void)move:(PlayerMove)direction;
- (void)stopMoving;

- (void)catchFruitWithValue:(NSInteger)value;
- (void)catchSweetWithValue:(NSInteger)value;

@end




#endif
