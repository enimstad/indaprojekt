//
//  FallingObject.m
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingObject.h"

@interface FallingObject ()

@end

@implementation FallingObject


- (instancetype)initWithRandomSprite{
    
    return [super init];
}
- (instancetype)initWithSprite:(NSString *)character {
    
    return [super init];
}
- (void)createWithPlayer:(Player *)player{
    self.player = player;
    
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [self.font fontWithSize:46];
    
    int xPos = 60+arc4random()%200;
    
    self.center = CGPointMake(xPos, 100);
    self.bounds = CGRectMake(50, 50, 60, 60);
    
    [UIView beginAnimations:@"Move object" context:nil];
    [UIView setAnimationCurve:(UIViewAnimationCurveEaseIn)];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(reachedBottom)];
    [UIView setAnimationDuration:4];
    
    self.center = CGPointMake(xPos, 500);
    
    [UIView commitAnimations];
}

- (void)reachedBottom {
    [self removeFromSuperview];
    
    if ([self distanceToPlayer] <= 46) {
        [self catched];
    }
}
- (NSInteger)distanceToPlayer {
    CGPoint p = self.player.center, s = self.center;
    return sqrt((p.x-s.x)*(p.x-s.x) + (p.y-s.y)*(p.y-s.y));
}

@end

