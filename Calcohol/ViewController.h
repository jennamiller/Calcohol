//
//  ViewController.h
//  Calcohol
//
//  Created by Jenna Miller on 11/30/14.
//  Copyright (c) 2014 Jenna Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;

- (void)buttonPressed:(UIButton *)sender;

@end

