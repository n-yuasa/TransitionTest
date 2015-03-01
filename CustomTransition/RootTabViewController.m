//
//  RootTabViewController.m
//  CustomTransition
//
//  Created by Nobutaka on 2015/03/01.
//  Copyright (c) 2015年 test.org. All rights reserved.
//

#import "RootTabViewController.h"
#import "ThirdItemViewController.h"

@interface RootTabViewController () <ChildViewControllerDelegate>

@end

@implementation RootTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationController *nav = self.viewControllers[2];
    ThirdItemViewController *vc = nav.viewControllers[0];
    vc.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(slideClickFromModal:) name:@"Slide" object:nil];
                                                
}

- (void)slideClick {
    
    UIView *fromView = ((UIViewController *)self.viewControllers[2]).view;
    UIView *toView = ((UIViewController *)self.viewControllers[0]).view;
    
    CGRect toViewFrame = toView.frame;
    toViewFrame.origin.x = fromView.frame.size.width;
    toView.frame = toViewFrame;
    
    [fromView.superview addSubview:toView];
    
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         CGRect fromViewFrame = fromView.frame;
                         fromViewFrame.origin.x -= fromViewFrame.size.width;
                         fromView.frame = fromViewFrame;
                         
                         CGRect toViewFrame = toView.frame;
                         toViewFrame.origin.x -= toView.frame.size.width;
                         toView.frame = toViewFrame;
                         
                     } completion:^(BOOL finished) {
                         if (finished) {
                             [toView removeFromSuperview];
                             self.selectedIndex = 0;
                         }
                     }];
    
                                        
    
}

- (void)slideClickFromModal:(NSNotification *)notificaion {
    
    UINavigationController *fromViewConroller = self.viewControllers[1];
    UIView *fromView = ((UIViewController *)self.viewControllers[1]).view;
    UIView *toView = ((UIViewController *)self.viewControllers[0]).view;
    
    CGRect toViewFrame = toView.frame;
    toViewFrame.origin.x = fromView.frame.size.width;
    toView.frame = toViewFrame;
    
    [fromView.superview addSubview:toView];
    
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         CGRect fromViewFrame = fromView.frame;
                         fromViewFrame.origin.x -= fromViewFrame.size.width;
                         fromView.frame = fromViewFrame;
                         
                         CGRect toViewFrame = toView.frame;
                         toViewFrame.origin.x -= toView.frame.size.width;
                         toView.frame = toViewFrame;
                         
                     } completion:^(BOOL finished) {
                         if (finished) {
                             [toView removeFromSuperview];
                             self.selectedIndex = 0;
                             fromViewConroller.tabBarController.tabBar.hidden = NO;
                             [fromViewConroller popToRootViewControllerAnimated:NO];
                         }
                     }];
    
}


@end
