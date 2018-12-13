//
//  ViewController.m
//  XYHolderTimer
//
//  Created by chenqing on 2018/12/13.
//  Copyright © 2018年 chenqing. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self presentViewController:[NextViewController new] animated:YES completion:nil];
}


@end
