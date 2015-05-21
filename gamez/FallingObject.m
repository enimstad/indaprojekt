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

-(instancetype)init {
    NSArray *object = [self anObject];
    self.value = [[object objectAtIndex:0] integerValue];
    self.text = [object objectAtIndex:1];
    
    return [super init];
}

- (void)createWithPlayer:(Player *)player{
    self.player = player;
    
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [self.font fontWithSize:46];
    
    int xPos = 30+arc4random()%260;
    
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
    if (self.hidden) {
        return;
    }
    
    if ([self distanceToPlayer] <= 46) {
        [self catched];
    }
}
- (NSInteger)distanceToPlayer {
    CGPoint p = self.player.center, s = self.center;
    return sqrt((p.x-s.x)*(p.x-s.x) + (p.y-s.y)*(p.y-s.y));
}

@end

