//
//  ModalSegue.m
//  CustomTransition
//
//  Created by Nobutaka on 2015/03/01.
//  Copyright (c) 2015年 test.org. All rights reserved.
//

#import "ModalSegue.h"

@implementation ModalSegue

- (void)perform {
    UIViewController *destinationVC = self.destinationViewController;
    UIViewController *sourceVC = self.sourceViewController;
    sourceVC.tabBarController.tabBar.hidden = YES;
    
    CGRect fromViewFrame = sourceVC.view.frame;
    CGRect destinationViewFrame = destinationVC.view.frame;
    destinationViewFrame.origin.y += fromViewFrame.size.height;
    destinationVC.view.frame = destinationViewFrame;
    
    [sourceVC.view addSubview:destinationVC.view];
    
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         CGRect destinationViewFrame = sourceVC.view.frame;
                         destinationVC.view.frame = destinationViewFrame;
                     }
                     completion:^(BOOL finished) {
                         
                         if (finished) {
                             [destinationVC.view removeFromSuperview];
                             [sourceVC.navigationController pushViewController:destinationVC animated:NO];
                         }
                         
                     }];
}

@end
