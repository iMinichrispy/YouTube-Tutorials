//
//  ViewController.m
//  TextFromWeb
//
//  Created by Alex Perez on 7/2/13.
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

- (IBAction)getText
{
    NSURL *url = [NSURL URLWithString:@"http://iminichrispy.com/Xcode/TextFromWeb.txt"];
    NSString *content = [NSString stringWithContentsOfURL:url encoding:NSStringEncodingConversionAllowLossy error:nil];
    label.text = content;
}

@end
