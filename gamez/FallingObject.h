//
//  FallingObject.h
//  Emojiz
//
//  Created by Emma Nimstad on 11/5/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#ifndef Emojiz_FallingObject_h
#define Emojiz_FallingObject_h

#import <UIKit/UILabel.h>
#import "Player.h"

@interface FallingObject : UILabel

@property Player *player;

- (instancetype)initWithRandomSprite;
- (instancetype)initWithSprite:(NSString *)character;

- (void)createWithPlayer:(Player *)player;
- (void) catched;

@end



#endif
