//
//  Fruit.m
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingProtocol.h"
#import "FallingObject.h"
#import "Sweet.h"

@interface Sweet ()

@end

@implementation Sweet

- (void)catched {
    [self.player catchSweet];
}

- (instancetype)initWithRandomSprite{
    return [self initWithSprite:@"🍪"];
}
- (instancetype)initWithSprite:(NSString *)character {
    self.text = character;
    return [super init];
}

@end