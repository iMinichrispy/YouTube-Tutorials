//
//  ViewController.h
//  ElapsedTime
//
//  Created by Alex Perez on 7/12/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UILabel *elapsedTimeLabel;
}

- (IBAction)calculateTime;

@end
