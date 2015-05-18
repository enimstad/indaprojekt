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
    self.score = 0;
    self.lives = 10;
    return [super initWithCoder:aDecoder];
}

- (void)increaseScore:(NSInteger)amount {
    self.score += amount;
    NSLog(@"Score: %lu", (long)_score);
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.score];
}
- (void)decreaseLives:(NSInteger)amount {
    self.lives -= amount;
    self.livesLabel.text = [NSString stringWithFormat:@"Lives: %ld", (long)self.lives];
}

@end