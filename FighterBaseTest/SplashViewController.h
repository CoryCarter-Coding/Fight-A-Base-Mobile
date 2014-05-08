//
//  SplashViewController.h
//  FighterBaseTest
//
//  Created by Cory Carter on 4/29/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SplashViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *BGMusic;
}

@end