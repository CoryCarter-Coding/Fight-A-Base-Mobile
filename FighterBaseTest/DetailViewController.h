//
//  DetailViewController.h
//  FighterBaseTest
//
//  Created by Cory Carter on 4/28/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *OriginLabel;
@property (strong, nonatomic) IBOutlet UILabel *AgeLabel;
@property (strong, nonatomic) IBOutlet UILabel *HeightLabel;
@property (strong, nonatomic) IBOutlet UILabel *WeightLabel;
@property (strong, nonatomic) IBOutlet UILabel *GameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ImageLabel;

@property (strong, nonatomic) IBOutlet NSString *convertedURL;

@property (strong, nonatomic) NSArray *DetailModal;

@end
