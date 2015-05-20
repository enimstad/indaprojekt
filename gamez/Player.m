//
//  Player.m
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import "Player.h"

@interface Player ()

- (void) actualMove;

@end

@implementation Player

- (instancetype)initWithPlayerstat:(PlayerStat *)stat {
    self.stat = stat;
    return [super init];
}

- (void)createWithEmoji:(NSString *)character {
    
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [self.font fontWithSize:56];
    self.text = character;
    
    self.center = CGPointMake(160, 500);
    self.bounds = CGRectMake(50, 50, 60, 60);
}

- (void)setEmoji:(NSString *)character {
    self.text = character;
}

- (void)move:(PlayerMove)move {
    self.direction = move;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.02
                                             target:self
                                           selector:@selector(actualMove)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)actualMove {
    CGFloat dx = 0, minx = CGRectGetMinX(self.frame), maxx = CGRectGetMaxX(self.frame);
    switch (self.direction) {
        case PlayerMoveLeft:
            if (minx >= 5) dx = -2;     // Only move left if where not at the left edge
            break;
        case PlayerMoveRight:
            if (maxx <= 315) dx = 2;    // Only move right if where not at the right edge
            break;
    }
    if (dx == 0) {
        [self stopMoving];
        return;
    }
    self.frame = CGRectOffset(self.frame, dx, 0);
}
- (void)stopMoving {
    [self.timer invalidate];
}

- (void)catchFruitWithValue:(NSInteger)value {
    [self.stat increaseScore:value];
}
- (void)catchSweetWithValue:(NSInteger)value {
    [self.stat decreaseLives:value];
}

@end