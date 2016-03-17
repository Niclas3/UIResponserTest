//
//  LackView.m
//  UIResponserTest
//
//  Created by nic on 16/3/16.
//  Copyright © 2016年 nic. All rights reserved.
//

#import "LackView.h"

#define nScreenTouch @"nScreenTouch"

@implementation LackView

-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onScreenTouch:) name:nScreenTouch object:nil];
    }
    
    return self;
}

-(void)awakeFromNib{
   [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onScreenTouch:) name:nScreenTouch object:nil];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:nScreenTouch object:nil];
}

-(void)onScreenTouch:(NSNotification *)notification
{
    UIEvent *event = [notification.userInfo objectForKey:@"data"];
    UITouch *touch = [event.allTouches anyObject];
    BOOL isNotInside = ![self pointInside: [touch locationInView:self] withEvent:event];
    
    if (touch.view != self && isNotInside) {
        [UIView animateWithDuration:0.5 animations:^{
            self.alpha = 0.0;
        }];
        [UIView commitAnimations];
        
    } else {
        [UIView animateWithDuration:0.3 animations:^{
            self.alpha = 1.0;
        }];
        
        [UIView commitAnimations];
    }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"LackView");
    NSLog(@"LackView touch Began start method.");
    
    NSLog(@"LackView touch Began end method.");
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"LackView touch ended start method.");
    
    NSLog(@"LackView touch ended end method.");
    
    NSLog(@"LackView");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"LackView touch moved start method.");
    
    NSLog(@"LackView touch moved end method.");
}

@end
