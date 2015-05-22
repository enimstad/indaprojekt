//
//  Fruit.m
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingObject.h"
#import "Sweet.h"

const NSArray *sweets;
const NSArray *sweetvalues;

@implementation Sweet

+ (void)initialize {
    sweets = @[@"🍪", @"🍩", @"🍰", @"🎂"];
    sweetvalues = @[@1, @2, @3, @5];
}

- (NSArray *)anObject {
    NSInteger rndm = arc4random()%[sweets count];
    
    return @[[sweetvalues objectAtIndex:rndm], [sweets objectAtIndex:rndm]];
}

- (void)catched {
    [self.player catchSweetWithValue:self.value];
}

@end