//
//  YellowView.m
//  UIResponserTest
//
//  Created by nic on 16/3/16.
//  Copyright © 2016年 nic. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Yellow View");
    NSLog(@"touch Began start method.");
    [self.nextResponder touchesBegan:touches withEvent:event];
    NSLog(@"touch Began end method.");
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch ended start method.");
    NSLog(@"touch ended end method.");
    [self.nextResponder touchesBegan:touches withEvent:event];
    NSLog(@"Yellow View ENDDING.");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch moved start method.");
    [self.nextResponder touchesBegan:touches withEvent:event];
    NSLog(@"touch moved end method.");
}

@end