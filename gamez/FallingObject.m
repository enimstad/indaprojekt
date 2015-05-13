//
//  FallingObject.m
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingProtocol.h"
#import "FallingObject.h"

@interface FallingObject ()

@end

@implementation FallingObject

-(void)hasReachedBottom {
    
}


- (instancetype)initWithRandomSprite{
    
    return [super init];
}
- (instancetype)initWithSprite:(NSString *)character {
    
    return [super init];
}
- (void)create{
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [self.font fontWithSize:46];
    
    int xPos = 60+arc4random()%200;
    
    self.center = CGPointMake(xPos, 100);
    self.bounds = CGRectMake(50, 50, 60, 60);
    
    [UIView beginAnimations:@"Move object" context:nil];
    [UIView setAnimationDuration:5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationCurve:(UIViewAnimationCurveEaseIn)];
    
    self.center = CGPointMake(xPos, 500);
    
    [UIView commitAnimations];
}

@end