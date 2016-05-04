//
//  UIViewController+UIBarButtonItem.m
//  02-JF_UINavigationController侧滑
//
//  Created by JF on 16/5/4.
//  Copyright © 2016年 JF. All rights reserved.
//

#import "UIViewController+UIBarButtonItem.h"

@implementation UIViewController (UIBarButtonItem)

- (void)setupLeftBarButtonItem {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(clickLeftBarButtonItem)];
}

- (void)clickLeftBarButtonItem {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setupRightBarButtonItem {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:(UIBarButtonItemStyleDone) target:self action:@selector(clickRightBarButtonItem)];
}

- (void)clickRightBarButtonItem {
    
}

@end
