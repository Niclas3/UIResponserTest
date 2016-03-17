//
//  ZMApplication.m
//  UIResponserTest
//
//  Created by nic on 16/3/16.
//  Copyright © 2016年 nic. All rights reserved.
//

#import "ZMApplication.h"
#define nScreenTouch @"nScreenTouch"

@implementation ZMApplication

-(void)sendEvent:(UIEvent *)event
{
    NSDictionary *dic = [NSDictionary dictionaryWithObject:event forKey:@"data"];
    
    if (event.type == UIEventTypeTouches) {
        [[NSNotificationCenter defaultCenter]
         postNotification:[NSNotification notificationWithName: @"nScreenTouch"
                                                        object:nil
                                                      userInfo:dic]];
         }
    if (event.type == UIEventTypeMotion) {
        NSLog(@"摇一摇啦啦啦");
    }
    [super sendEvent:event];
}

@end
