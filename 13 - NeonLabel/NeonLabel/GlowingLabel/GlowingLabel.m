//
//  GlowingLabel.m
//  GlowingLabel
//
//  Created by Alex Perez on 6/27/13.
//  Copyright (c) 2013 Alex Perez. All rights reserved.
//

#import "GlowingLabel.h"


@implementation GlowingLabel


- (void) drawRect:(CGRect)rect
{
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	
	UIColor *insideColor = [UIColor colorWithRed:69.0/255.0 green:254.0/255.0 blue:0 alpha:1];
	UIColor *outlineColor = [UIColor colorWithRed:22.0/255.0 green:145.0/255.0 blue:0 alpha:0.8];
	UIColor *blurColor = [UIColor colorWithRed:104.0/255.0 green: 248.0/255.0 blue:0 alpha:0.7];
    
	CGContextSetStrokeColorWithColor(ctx, outlineColor.CGColor);
	CGContextSetFillColorWithColor(ctx, insideColor.CGColor);
	CGContextSetLineWidth(ctx, self.font.pointSize/60.0);
	CGContextSetShadowWithColor(ctx, CGSizeMake(0, 0), self.font.pointSize / 10.0, blurColor.CGColor);
	CGContextSetTextDrawingMode(ctx, kCGTextFillStroke);
	
	[self.text drawInRect:self.bounds withFont:self.font lineBreakMode:self.lineBreakMode alignment:self.textAlignment];
}


@end
