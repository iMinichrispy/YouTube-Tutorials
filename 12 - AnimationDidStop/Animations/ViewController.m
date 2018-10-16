//
//  ViewController.m
//  Animations
//
//  Created by Alex Perez on 7/8/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)animate
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop)];
    redView.center = CGPointMake(redView.center.x+150, redView.center.y);
    redView.alpha = .5;
    [UIView commitAnimations];
}

- (void)animationDidStop
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:2];
//    [UIView setAnimationDidStopSelector:@selector(animationDidStop)];
    redView.center = CGPointMake(redView.center.x, redView.center.y-150);
    redView.alpha = 0;
    [UIView commitAnimations];
}

@end
