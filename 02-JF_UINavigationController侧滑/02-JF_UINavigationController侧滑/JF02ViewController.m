//
//  JF02ViewController.m
//  02-JF_UINavigationController侧滑
//
//  Created by JF on 16/5/4.
//  Copyright © 2016年 JF. All rights reserved.
//

#import "JF02ViewController.h"

#import "UIViewController+UIBarButtonItem.h"

#import "JF03ViewController.h"

@interface JF02ViewController ()

@end

@implementation JF02ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    [self setupLeftBarButtonItem];
    [self setupRightBarButtonItem];
}

- (void)clickRightBarButtonItem {
    JF03ViewController *vc = [[JF03ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
