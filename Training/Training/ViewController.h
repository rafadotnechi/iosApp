//
//  ViewController.h
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *courseLabel;
@property (weak, nonatomic) IBOutlet UIButton *helloButton;
@property (weak, nonatomic) IBOutlet UISwitch *helloSwitch;
@property (weak, nonatomic) IBOutlet UIProgressView *helloBar;
@property (weak, nonatomic) IBOutlet UIStepper *helloStep;

@end

