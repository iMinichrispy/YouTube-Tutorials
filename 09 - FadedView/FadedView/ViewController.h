//
//  ViewController.h
//  FadedView
//
//  Created by Alex Perez on 7/5/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UIView *fadedView;
    IBOutlet UIView *fadedViewComponents;
}

- (IBAction)showFaded;

@end
