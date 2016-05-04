//
//  JF01ViewController.m
//  02-JF_UINavigationController侧滑
//
//  Created by JF on 16/5/4.
//  Copyright © 2016年 JF. All rights reserved.
//

#import "JF01ViewController.h"

#import "UIViewController+UIBarButtonItem.h"

#import "JF02ViewController.h"

@interface JF01ViewController ()

@end

@implementation JF01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    [self setupRightBarButtonItem];
}

- (void)clickRightBarButtonItem {
    JF02ViewController *vc = [[JF02ViewController alloc] init];
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
