//
//  SplashViewController.m
//  FighterBaseTest
//
//  Created by Cory Carter on 4/29/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *Music = [[NSBundle mainBundle]pathForResource:(@"FABMIntro") ofType:(@"mp3")];
    BGMusic = [[AVAudioPlayer alloc ]initWithContentsOfURL:[NSURL fileURLWithPath:Music] error:NULL];
    
    BGMusic.delegate = self;
    [BGMusic play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
