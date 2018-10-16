//
//  ViewController.m
//  BatteryStatus
//
//  Created by Alex Perez on 7/11/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusChanged) name:UIDeviceBatteryLevelDidChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusChanged) name:UIDeviceBatteryStateDidChangeNotification object:nil];
    
    [[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];
}

- (void)statusChanged
{
    batteryLevel.text = [NSString stringWithFormat:@"%.f",[[UIDevice currentDevice] batteryLevel]];
    batteryStatus.text = [NSString stringWithFormat:@"%d",[[UIDevice currentDevice] batteryState]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
