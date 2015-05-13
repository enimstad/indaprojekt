//
//  FallingProtocol.h
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FallingProtocol <NSObject>

@property UIImage *sprite;
@property NSInteger speed;

- (void)hasReachedBottom;

- (instancetype)initWithRandomSprite;
- (instancetype)initWithSprite:(UIImage *)sprite speed:(NSInteger)speed;
@end
