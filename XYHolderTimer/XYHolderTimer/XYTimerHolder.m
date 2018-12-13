//
//  XYTimerHolder.m
//  activityentrance
//
//  Created by chenqing on 2018/9/28.
//  Copyright © 2018年 Leon. All rights reserved.
//

#import "XYTimerHolder.h"
#import "WeakTarget.h"

@interface XYTimerHolder(){
    NSTimer *_timer;
    BOOL _repeats;
}

@end

@implementation XYTimerHolder

-(void)startTimer:(NSTimeInterval)seconds delegate:(id<XYTimerHolderDelegete>)delegate repeats:(BOOL)repeats{
    _delegate = delegate;
    _repeats = repeats;
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds target:[WeakTarget weakTarget:self] selector:@selector(onTimer:) userInfo:nil repeats:_repeats];
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

- (void)onTimer:(NSTimer *)timer{
    if (!_repeats) {
        _timer = nil;
    }
    if (_delegate && [_delegate respondsToSelector:@selector(timerFired:)]) {
        [_delegate timerFired:self];
    }
}

- (void)stopTimer{
    [_timer invalidate];
    _timer = nil;
    _delegate = nil;
}

- (void)dealloc{
    [self stopTimer];
    NSLog(@"XYTimerHolder dealloc");
}

@end
