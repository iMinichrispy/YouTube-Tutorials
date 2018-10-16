//
//  ViewController.m
//  2DArrays
//
//  Created by Alex Perez on 7/7/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (int x = 0; x<5; x++) {
        for (int y = 0; y<10; y++) {
            twoDimensionalArray[x][y] = false;
        }
    }
    
    twoDimensionalArray[0][5] = true;
    twoDimensionalArray[2][8] = true;
    twoDimensionalArray[1][2] = true;
    twoDimensionalArray[4][5] = true;
    twoDimensionalArray[3][1] = true;
    
    [self arrayToString:twoDimensionalArray];
}

- (void)arrayToString:(bool [5][10])array
{
    NSString *arrayOutputString = [NSString stringWithFormat:@"\n["];
    
    for (int y=0;y<=9;y++) {
        for (int x=0;x<=4;x++) {
            if (x<4) {
                if (array[x][y]==true) {
                    arrayOutputString = [NSString stringWithFormat:@"%@%@-",arrayOutputString,@"X"];
                }
                else {
                    arrayOutputString = [NSString stringWithFormat:@"%@%@-",arrayOutputString,@"0"];
                }
            }
            else if (x==4) {
                if (array[x][y]==true) {
                    arrayOutputString = [NSString stringWithFormat:@"%@%@]\n",arrayOutputString,@"X"];
                }
                else {
                    arrayOutputString = [NSString stringWithFormat:@"%@%@]\n",arrayOutputString,@"0"];
                }
            }
        }
        
        if (y!=9) {
            arrayOutputString = [NSString stringWithFormat:@"%@[",arrayOutputString];
        }
    }
    NSLog(@"%@",arrayOutputString);
}

@end
