//
//  PlayerStat.m
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerStat.h"


@implementation PlayerStat

- (instancetype) init {
    self.score = 0;
    self.lives = 10;
    return [super init];
}

- (void)increaseScore:(NSInteger)amount {
    self.score += amount;
    NSLog(@"%lu", (long)_score);
}
- (void)decreaseLives:(NSInteger)amount {
    self.lives -= amount;
}

@end