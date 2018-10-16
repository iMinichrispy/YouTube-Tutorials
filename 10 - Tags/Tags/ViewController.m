//
//  ViewController.m
//  Tags
//
//  Created by Alex Perez on 7/6/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    for (int x = 0; x<=10; x++) {
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Red.png"]];
        image.tag = 101;
        int randomx = arc4random() % 320;
        int randomy = arc4random() % 480;
        image.center = CGPointMake(randomx, randomy);
        [self.view addSubview:image];
    }
}

- (IBAction)actions:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button.tag == 4) {
        NSLog(@"234234");
    }
    
    for (UIImageView *image in [self.view subviews]) {
        if (image.tag==101) {
            [image removeFromSuperview];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
