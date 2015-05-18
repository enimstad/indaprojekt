//
//  Fruit.m
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingObject.h"
#import "Fruit.h"

@interface Fruit ()

@end

@implementation Fruit

- (void)catched {
    [self.player catchFruit];
}

- (instancetype)initWithRandomSprite{
    return [self initWithSprite:@"🍎"];
}
- (instancetype)initWithSprite:(NSString *)character {
    self.text = character;
    return [super init];
}

@end