//
//  ViewController.h
//  LoginScreen
//
//  Created by Alex Perez on 7/3/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UITextField *usernameField;
    IBOutlet UITextField *passwordField;
    
    NSDictionary *credentialsDictionary;
}

- (IBAction)enterCredentials;

@end
