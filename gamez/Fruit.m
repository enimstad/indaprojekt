//
//  Fruit.m
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <UIKit/UIView.h>
#import "FallingObject.h"
#import "Fruit.h"

const NSArray *fruits;
const NSArray *fruitvalues;

@implementation Fruit

+ (void)initialize {
    fruits = @[@"🍒", @"🍇", @"🍊", @"🍏", @"🍌", @"🍉"];
    fruitvalues = @[@1, @3, @5, @7, @8, @10];
}

- (instancetype)init{
    NSLog(@"Initializing a fruit");
    return [super init];
}

- (NSArray *)anObject {
    NSInteger rndm = arc4random()%[fruits count];
    
    return @[[fruitvalues objectAtIndex:rndm], [fruits objectAtIndex:rndm]];
}

- (void)catched {
    [self.player catchFruitWithValue:self.value];
}

@end