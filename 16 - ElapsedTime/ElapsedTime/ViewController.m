//
//  ViewController.m
//  ElapsedTime
//
//  Created by Alex Perez on 7/12/13.
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

- (IBAction)calculateTime
{
    CFAbsoluteTime statTime = CFAbsoluteTimeGetCurrent();
    
    for (int x = 0; x<=1000; x++) {
        NSLog(@"%i",x);
    }
    
    CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
    CFAbsoluteTime elapsedTime = endTime - statTime;
    elapsedTimeLabel.text = [NSString stringWithFormat:@"Elapsed Time: %f",elapsedTime];
}

@end
