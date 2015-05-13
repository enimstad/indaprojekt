//
//  FallingObject.h
//  gamez
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef gamez_FallingObject_h
#define gamez_FallingObject_h

#import <UIKit/UILabel.h>

@interface FallingObject : UILabel

- (void)hasReachedBottom;

- (instancetype)initWithRandomSprite;
- (instancetype)initWithSprite:(NSString *)character;

- (void) create;

@end



#endif
