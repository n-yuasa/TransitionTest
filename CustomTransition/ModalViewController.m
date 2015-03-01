//
//  ModalViewController.m
//  CustomTransition
//
//  Created by Nobutaka on 2015/03/01.
//  Copyright (c) 2015年 test.org. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBarController.hidesBottomBarWhenPushed = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)slideClick:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Slide" object:nil];
    
}

@end
