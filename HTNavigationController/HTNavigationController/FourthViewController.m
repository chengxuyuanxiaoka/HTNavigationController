//
//  FourthViewController.m
//  HTNavigationController
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "FourthViewController.h"
#import "SecondViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第四个页面";
    self.view.backgroundColor = [UIColor redColor];
    [self createButton];
    
}

- (void)createButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"跳到第二个页面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 200, CGRectGetWidth(self.view.bounds)-100, 30);
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick:(UIButton *)button {
    //可以获取到导航控制器上所有视图控制器
    NSArray * controllers = self.navigationController.viewControllers;
    //方法一
    for (UIViewController * vc in controllers) {
        if ([vc isKindOfClass:[SecondViewController class]]) {
            [self.navigationController popToViewController:vc animated:YES];
        }
    }
    //方法二
    /**
     *
     */
//    [self.navigationController popToViewController:[controllers objectAtIndex:1] animated:YES];
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
