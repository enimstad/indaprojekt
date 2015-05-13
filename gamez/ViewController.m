//
//  ViewController.m
//  gamez
//
//  Created by Emma Nimstad on 30/4/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.player = [[Player alloc] init];
    [self.view addSubview:self.player];
    [self.player createWithEmoji:@"🐵"];

    objectsCreator = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(createObject) userInfo:nil repeats:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
         NSLog(@"%@", NSStringFromCGPoint([touch locationInView:self.view]));
        
        if ([touch locationInView:self.view].x < 160) {
//            NSLog(@"Going left");
            [self.player moveDirection:PlayerMoveLeft];
        }
        else if ([touch locationInView:self.view].x > 160){
//            NSLog(@"Going right");
            [self.player moveDirection:PlayerMoveRight];
        }
    }
    
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.player stopMoving];
}

- (void) createObject {
    // Fruit *fo = [[Fruit alloc] initWithRandomSprite];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
