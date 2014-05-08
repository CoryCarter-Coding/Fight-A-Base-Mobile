//
//  DetailViewController.m
//  FighterBaseTest
//
//  Created by Cory Carter on 4/28/14.
//  Copyright (c) 2014 Cory Carter and Alan Covington. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    _NameLabel.text     = _DetailModal[0];
    _OriginLabel.text   = _DetailModal[1];
    _AgeLabel.text      = _DetailModal[2];
    _HeightLabel.text   = _DetailModal[3];
    _WeightLabel.text   = _DetailModal[4];
    _GameLabel.text     = _DetailModal[5];
    
    _convertedURL       = _DetailModal[6];
    
    _ImageLabel.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_convertedURL]]];
    
    self.navigationItem.title = _DetailModal[0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
