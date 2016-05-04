//
//  JFNavigationController.m
//  02-JF_UINavigationController侧滑
//
//  Created by JF on 16/5/4.
//  Copyright © 2016年 JF. All rights reserved.
//

#import "JFNavigationController.h"

@interface JFNavigationController ()<UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@end

@implementation JFNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak JFNavigationController *weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
        self.delegate = weakSelf;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if ( [self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    [super pushViewController:viewController animated:animated];
    
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    if ( [self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    return  [super popToRootViewControllerAnimated:animated];
    
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated { if( [self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    return [super popToViewController:viewController animated:animated];
}

#pragma mark UINavigationControllerDelegate 
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animate {
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = YES;
    }
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if ( gestureRecognizer == self.interactivePopGestureRecognizer ) {
        if ( self.viewControllers.count < 2 || self.visibleViewController == [self.viewControllers objectAtIndex:0] ) {
            return NO;
        }
    }
    return YES;
}

@end
