//
//  Player.h
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef gamez_Player_h
#define gamez_Player_h

#import <UIKit/UIKit.h>

typedef enum PlayerMove {
    PlayerMoveLeft,
    PlayerMoveRight
} PlayerMove;

@interface Player : UILabel

// - (instancetype)initWithDefaultSprite;
- (void)createWithEmoji:(NSString *)character;
- (void)setEmoji:(NSString *)character;

- (void)moveDirection:(PlayerMove)direction;
- (void)stopMoving;

@end




#endif
