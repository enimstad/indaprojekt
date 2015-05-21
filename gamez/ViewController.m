//
//  ViewController.m
//  Emojiz
//
//  Created by Emma Nimstad on 30/4/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void) stopGame;
@end

@implementation ViewController

void hello(){
    printf("Hello world!\n");
}

// Set up the game and show main meny.
- (void)viewDidLoad {
    
    hello();
    
    [super viewDidLoad];
    
    self.player = [[Player alloc] initWithPlayerstat:self.statView];
    [self.view addSubview:self.player];
    [self.player createWithEmoji:@"🐵"];
}

// Start movement of player emoji when screen is touched.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        if ([touch locationInView:self.view].x < 160) {
            [self.player move:PlayerMoveLeft];
        }
        else {
            [self.player move:PlayerMoveRight];
        }
    }
}

// Stop movement of player emoji when finger is released.
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.player stopMoving];
}

// Start a new game.
- (IBAction)startGame:(id)sender {
    [self.player.stat reset];
    self.menyView.hidden = YES;
    self.menyView.userInteractionEnabled = NO;
    objectsCreator = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(createObject) userInfo:nil repeats:YES];
}

// Generate a falling object and add to self's view.
// The type of object is chosen randomly.
- (void)createObject {
    
    if (self.player.stat.lives <= 0) {
        [self stopGame];
    }
    
    FallingObject *fo;
    bool createFruit = arc4random()%100 < 60;
    if (createFruit) {
        fo = [[Fruit alloc] init];
    }
    else {
        fo = [[Sweet alloc] init];
    }
    if (!objectsCreator.valid) {
        return;
    }
    [self.view addSubview:fo];
    [fo createWithPlayer:self.player];
}

// When out of lives, stop creating falling objects,
// make any objects in view invisible (and thereby uncatchable),
// and show startmeny.
- (void)stopGame {
    [objectsCreator invalidate];
    
    for (UIView *object in [self.view subviews]) {
        if ([object isKindOfClass:[FallingObject class]]) {
            [object setHidden:YES];
        }
    }
    
    self.menyView.hidden = NO;
    self.menyView.userInteractionEnabled = YES;
}


// ONLY FOR DEVELOPMENT PURPOSES
- (IBAction)endGame:(id)sender {
    [self.player stopMoving];
    [self stopGame];
}

- (void)chooseEmoji:(NSString *)character {
    [self.player setEmoji:character];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
