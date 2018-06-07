//
//  ViewController.m
//  DRTimer
//
//  Created by dch on 2018/6/7.
//  Copyright © 2018年 dch. All rights reserved.
//

#import "ViewController.h"
#import "DRTimer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [DRTimer start:@"mark"];
    
    for (int i = 0; i < 10000; i ++) {
        
    }
    
    [DRTimer stop:@"mark"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
