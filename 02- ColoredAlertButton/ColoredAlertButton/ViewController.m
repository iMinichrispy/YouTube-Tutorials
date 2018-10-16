//
//  ViewController.m
//  ColoredAlertButton
//
//  Created by Alex Perez on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


- (IBAction)showAlert
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"This is a message" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Danger",@"Safe", nil];
    [alert show];
}

- (void)willPresentAlertView:(UIAlertView *)alertView
{
    [[[alertView subviews] objectAtIndex:3] setBackgroundColor:[UIColor colorWithRed:.5 green:0.0f blue:0.0f alpha:1.0f]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
