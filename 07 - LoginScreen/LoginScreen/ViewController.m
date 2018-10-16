//
//  ViewController.m
//  LoginScreen
//
//  Created by Alex Perez on 7/3/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    credentialsDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"password", @"1234", nil] forKeys:[NSArray arrayWithObjects:@"username",@"alex", nil]];
}

- (IBAction)enterCredentials
{
    if ([[credentialsDictionary objectForKey:usernameField.text]isEqualToString:passwordField.text]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"This password is correct." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"This password is incorrect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
}

@end
