//
//  PlayerStat.m
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import "PlayerStat.h"


@implementation PlayerStat

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    [self reset];
    return [super initWithCoder:aDecoder];
}

- (void)updateLives:(NSInteger)lives {
    lives = MAX(lives, 0);
    self.lives = lives;
    self.livesLabel.text = [NSString stringWithFormat:@"Lives: %ld", (long)self.lives];
}

- (void)updateScore:(NSInteger)score {
    self.score = score;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.score];
}

- (void)increaseScore:(NSInteger)amount {
    [self updateScore:self.score+amount];
}

- (void)decreaseLives:(NSInteger)amount {
    [self updateLives:self.lives-amount];
}

- (void)reset {
    [self updateScore:0];
    [self updateLives:10];
}

@end