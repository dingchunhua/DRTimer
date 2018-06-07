//
//  DRTimerItem.h
//  DRTimer
//
//  Created by dch on 2018/6/7.
//  Copyright © 2018年 dch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRTimerItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSDate *started;
@property (nonatomic, strong) NSDate *ended;

- (void)log;

@end
