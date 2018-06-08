//
//  ViewController.m
//  TS-Tac-Toe
//
//  Created by Alexander Moller on 6/8/18.
//  Copyright © 2018 Talkspace. All rights reserved.
//

#import "ViewController.h"
#import "TS_Tac_Toe-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// Do single player stuff here
- (IBAction)singlePlayerButtonClicked:(UIButton *)sender {
    TSTacToeViewController *vc = [TSTacToeViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

// Do multiplayer stuff here
- (IBAction)multiplayerButtonClicked:(UIButton *)sender {
    TSTacToeViewController *vc = [TSTacToeViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
