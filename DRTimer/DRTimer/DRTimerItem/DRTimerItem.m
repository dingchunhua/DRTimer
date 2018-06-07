//
//  DRTimerItem.m
//  DRTimer
//
//  Created by dch on 2018/6/7.
//  Copyright © 2018年 dch. All rights reserved.
//

#import "DRTimerItem.h"

@implementation DRTimerItem

- (void)log
{
    NSLog(@"[DRTimer][%@] %fms", self.name, [self.ended timeIntervalSinceDate:self.started] * 1000.0);
}

@end
