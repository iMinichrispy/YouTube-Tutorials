//
//  ViewController.m
//  MethodWithParameters
//
//  Created by Alex Perez on 7/1/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self newImageViewWithXCoord:160 withYCoord:240 withAlpha:1 withTag:101 withColor:[UIColor redColor] withImageName:@"Image.png"];
    [self newImageViewWithXCoord:50 withYCoord:50 withAlpha:.5 withTag:123 withColor:[UIColor blueColor] withImageName:@"Image.png"];
    [self newImageViewWithXCoord:44 withYCoord:120 withAlpha:.2 withTag:101 withColor:[UIColor yellowColor] withImageName:@"Image.png"];
}

- (void)newImageViewWithXCoord:(int)x withYCoord:(int)y withAlpha:(float)alpha withTag:(int)aTag withColor:(UIColor *)color withImageName:(NSString *)imageName
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    imageView.center = CGPointMake(x, y);
    [imageView setAlpha:alpha];
    [imageView setTag:aTag];
    [imageView setBackgroundColor:color];
    [self.view addSubview:imageView];
}


@end
