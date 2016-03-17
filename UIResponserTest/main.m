//
//  main.m
//  UIResponserTest
//
//  Created by nic on 16/3/16.
//  Copyright © 2016年 nic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ZMApplication.h"

int main(int argc, char * argv[]) {
    printf("one is all, all is one.");
    @autoreleasepool {
        return UIApplicationMain(argc, argv, NSStringFromClass([ZMApplication class]) , NSStringFromClass([AppDelegate class]));
    }
}
