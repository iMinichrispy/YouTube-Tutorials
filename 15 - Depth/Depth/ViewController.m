//
//  ViewController.m
//  Depth
//
//  Created by Alex Perez on 7/11/13.
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

- (IBAction)button1pressed
{
    [self.view bringSubviewToFront:button1];
}

- (IBAction)button2pressed
{
    [self.view bringSubviewToFront:button2];
}

@end
