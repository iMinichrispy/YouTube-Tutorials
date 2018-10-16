//
//  ViewController.m
//  Password
//
//  Created by Alex Perez on 8/6/12.
//  Copyright (c) 2012 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)enterPassword
{
    NSString *passwordString = [NSString stringWithFormat:@"1234"];
    
    if ([passwordField.text isEqualToString:passwordString]) {
        // Password is correct
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"This password is correct." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    else {
        // Password is incorrect
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"This password is incorrect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
