//
//  DRTimer.m
//  DRTimer
//
//  Created by dch on 2018/6/7.
//  Copyright © 2018年 dch. All rights reserved.
//

#import "DRTimer.h"
#import "DRTimerItem.h"

@interface DRTimer ()

@property (nonatomic, strong) NSMutableDictionary* items;

@end

@implementation DRTimer

#pragma mark - life cycles
- (id)init
{
    if (self = [super init]) {
        self.items = [NSMutableDictionary dictionaryWithCapacity:6];
    }
    
    return self;
}

#pragma mark - public menthods
+ (void)start:(NSString *)name
{
    [[DRTimer sharedInstance] add:name];
}

+ (void)stop:(NSString *)name
{
    [[DRTimer sharedInstance] remove:name];
}

#pragma mark - private method
+ (DRTimer*)sharedInstance
{
    static DRTimer *sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (void)add:(NSString*)name
{
    if ([self.items objectForKey:[name lowercaseString]] == nil) {
        DRTimerItem *item = [DRTimerItem new];
        item.name = name;
        item.started = [NSDate new];
        [self.items setObject:item forKey:[name lowercaseString]];
    } else {
        NSLog(@"Timer called '%@' already exists.", name);
    }
}

- (void)remove:(NSString*)name
{
    DRTimerItem* item = [self.items objectForKey:[name lowercaseString]];
    
    if (item != nil) {
        item.ended = [NSDate new];
        [item log];
        [self.items removeObjectForKey:[name lowercaseString]];
    } else {
        NSLog(@"Timer called '%@' does not exist.", name);
    }
}

- (void)removeAll
{
    [self.items removeAllObjects];
}

@end
