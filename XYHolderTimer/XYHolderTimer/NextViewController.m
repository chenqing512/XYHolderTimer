//
//  NextViewController.m
//  XYHolderTimer
//
//  Created by chenqing on 2018/12/13.
//  Copyright © 2018年 chenqing. All rights reserved.
//

#import "NextViewController.h"
#import "XYTimerHolder.h"

@interface NextViewController ()<XYTimerHolderDelegete>

@property (nonatomic, strong) XYTimerHolder *timerHolder;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timerHolder = [[XYTimerHolder alloc]init];
    [_timerHolder startTimer:1 delegate:self repeats:YES];
}

-(void)timerFired:(XYTimerHolder *)holder{
    NSLog(@"123");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)dealloc{
    NSLog(@"NextViewController dealloc");
}

@end
