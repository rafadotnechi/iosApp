//
//  ViewController.m
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import "ViewController.h"
#import "tarefa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        [self.helloButton setTitle:@"Reset" forState:UIControlStateNormal];
    self.helloBar.progress=0.0;
    [self.helloSwitch setOn:NO];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    Tarefa *t0 = [[Tarefa alloc] init];
    
    t0.desc = @"String";
    t0.isImportant = NO;
    [array addObject:t0];
    
    Tarefa *t1 = [[Tarefa alloc] initWithDesc:@"String"];
    t1.isImportant = YES;
    [array addObject:t1];
    
    NSLog(@"%@", array);
    
}
- (IBAction)pressButton:(id)sender {
    self.helloBar.progress = 0.0;
    self.helloStep.value = 0.0;
    
}

- (IBAction)switchSwitch:(id)sender {
    if (self.helloSwitch.isOn) {
        [self.helloButton setTitle:@"Reseta" forState:UIControlStateNormal];
        self.courseLabel.text = @"Olá Mundo";
    }
    else
    {
    [self.helloButton setTitle:@"Reset" forState:UIControlStateNormal];
        self.courseLabel.text=@"Hello World";
    }
}


- (IBAction)step:(UIStepper *)sender {
    NSLog(@"%f",sender.value);
    self.helloBar.progress = sender.value/10;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
