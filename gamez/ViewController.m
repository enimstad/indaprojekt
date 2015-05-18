//
//  ViewController.m
//  Emojiz
//
//  Created by Emma Nimstad on 30/4/15.
//  Copyright (c) 2015 Emma Nimstad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void) startGame;
@end

@implementation ViewController

void hello(){
    printf("Hello world\n");
}

// Set up the game
// *and show main meny                                            <--
- (void)viewDidLoad {
    
    hello();
    
    [super viewDidLoad];
    
    self.player = [[Player alloc] initWithPlayerstat:self.statView];
    [self.view addSubview:self.player];
    [self.player createWithEmoji:@"🐵"];
    
//    [self.view addSubview:self.player.stat.scoreLabel];
//    [self.view addSubview:self.player.stat.livesLabel];
//    [self.player.stat createLabels];

    [self startGame];
    
}

// Start movement of player emoji when screen is touched
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

// Stop movement of player emoji when finger is released
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.player stopMoving];
}

// Start a new game
- (void)startGame {
    [self.view addSubview:self.player.stat.scoreLabel];
    [self.view addSubview:self.player.stat.livesLabel];
    objectsCreator = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(createObject) userInfo:nil repeats:YES];
}

// Generate a falling object and add to self's view
// The type of object is chosen randomly
- (void)createObject {
//    self.player.stat.scoreLabel.text = [NSString stringWithFormat:@"hello"];
    FallingObject *fo;
    bool createFruit = arc4random()%2;
    if (createFruit) {
        fo = [[Fruit alloc] initWithRandomSprite];
    }
    else {
        fo = [[Sweet alloc] initWithRandomSprite];
    }
    [self.view addSubview:fo];
    [fo createWithPlayer:self.player];
    // NSLog(@"%d", createFruit);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
