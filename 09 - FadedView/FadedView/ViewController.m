//
//  ViewController.m
//  FadedView
//
//  Created by Alex Perez on 7/5/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	fadedView.alpha = .5;
    [fadedViewComponents setBackgroundColor:[UIColor clearColor]];
}

- (IBAction)showFaded
{
    [self.view addSubview:fadedView];
    [self.view addSubview:fadedViewComponents];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
