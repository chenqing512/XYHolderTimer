//
//  XYTimerHolder.h
//  activityentrance
//
//  Created by chenqing on 2018/9/28.
//  Copyright © 2018年 Leon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYTimerHolder;

@protocol XYTimerHolderDelegete <NSObject>

- (void)timerFired:(XYTimerHolder *)holder;

@end

NS_ASSUME_NONNULL_BEGIN

@interface XYTimerHolder : NSObject

@property (nonatomic,weak) id<XYTimerHolderDelegete> delegate;

- (void)startTimer:(NSTimeInterval)seconds
          delegate:(id<XYTimerHolderDelegete>)delegate
           repeats:(BOOL)repeats;

- (void)stopTimer;

@end

NS_ASSUME_NONNULL_END
