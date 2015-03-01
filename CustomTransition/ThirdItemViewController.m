//
//  ThirdItemViewController.m
//  CustomTransition
//
//  Created by Nobutaka on 2015/03/01.
//  Copyright (c) 2015年 test.org. All rights reserved.
//

#import "ThirdItemViewController.h"

@interface ThirdItemViewController ()

@end

@implementation ThirdItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideClick:(id)sender {
    [_delegate slideClick];
}


@end
