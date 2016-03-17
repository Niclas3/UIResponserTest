//
//  ViewController.m
//  UIResponserTest
//
//  Created by nic on 16/3/16.
//  Copyright © 2016年 nic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong ) UIAlertController *alert;

@end

@implementation ViewController


- (void)viewDidAppear:(BOOL)animated
{
    [self becomeFirstResponder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(lala:)
                                                 name:UIApplicationWillEnterForegroundNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orttt:) name:UIDeviceOrientationDidChangeNotification object:nil];
}
- (void)orttt:(NSNotification *) notification
{
  
    id obj = [notification userInfo];

    NSLog(@"转转转屏幕%@",obj);
    [self.view snapshotViewAfterScreenUpdates:YES];
}
- (void)lala:(NSNotification *) notification
{
    id obj = [notification userInfo];
    NSLog(@"胡汉三又回来啦！%@", obj);
}
- (IBAction)sss:(id)sender {
    NSArray *array = @[@"http://www.baidu.com",
                       @"http://www.clovergraden.tk",
                       @1];
    
    UIActivityViewController *avc = [[UIActivityViewController alloc] initWithActivityItems:array applicationActivities:nil];
    avc.excludedActivityTypes = @[UIActivityTypePostToFacebook];
    [self.navigationController presentViewController:avc animated:YES completion:nil];
}


//-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
//{
//    int redomNum = arc4random();
//    NSString *str = [NSString stringWithFormat:@"%d", redomNum];
//    if (_alert) {
//        [_alert dismissViewControllerAnimated:YES completion:^{
//            
//         }];
//        _alert = nil;
//    } else {
//
//    _alert = [UIAlertController alertControllerWithTitle:@"yoooo" message:@"lalalalala" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
//    [_alert addAction:cancelAction];
//    [_alert addAction:okAction];
//    [self presentViewController:_alert animated:YES completion:^{
//        
//    }];
//    }
//}


- (IBAction)touchUP:(id)sender {
    STLogResponderChain(sender);
}

void STLogResponderChain(UIResponder *responder) {
    NSLog(@"------------------The Responder Chain------------------");
    NSMutableString *spaces = [NSMutableString stringWithCapacity:4];
    while (responder) {
        NSLog(@"%@%@", spaces, responder.class);
        responder = responder.nextResponder;
        [spaces appendString:@"----"];
    }
}


@end
