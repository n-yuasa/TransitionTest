//
//  ThirdItemViewController.h
//  CustomTransition
//
//  Created by Nobutaka on 2015/03/01.
//  Copyright (c) 2015年 test.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChildViewControllerDelegate <NSObject>

- (void)slideClick;

@end

@interface ThirdItemViewController : UIViewController

@property (nonatomic, weak) id<ChildViewControllerDelegate> delegate;

@end
