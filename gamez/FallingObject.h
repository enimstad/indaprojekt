//
//  FallingObject.h
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef gamez_FallingObject_h
#define gamez_FallingObject_h

#import <UIKit/UIView.h>

@interface FallingObject : UIView

@property NSString *sprite;
@property NSInteger speed;

- (void)hasReachedBottom;

- (instancetype)initWithRandomSprite;
- (instancetype)initWithSprite:(NSString *)character speed:(NSInteger)speed;

@end



#endif
