//
//  SecondViewController.m
//  HTNavigationController
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第二个页面";
    self.view.backgroundColor = [UIColor whiteColor];
    [self createButton];
}

- (void)createButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"上一页" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 200, CGRectGetWidth(self.view.bounds)-200, 30);
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    button.tag = 101;
    [self.view addSubview:button];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.backgroundColor = [UIColor brownColor];
    [button2 setTitle:@"下一页" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button2.frame = CGRectMake(100, 280, CGRectGetWidth(self.view.bounds)-200, 30);
    [button2 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    button2.tag = 102;
    [self.view addSubview:button2];
}

- (void)buttonClick:(UIButton *)button {
    if (button.tag == 101) {
        //返回上一个视图控制器，出栈操作
        [self.navigationController popViewControllerAnimated:YES];
    }else if (button.tag == 102) {
        //跳转到下一个视图控制器
        ThirdViewController * thirdVC = [[ThirdViewController alloc] init];
        [self.navigationController pushViewController:thirdVC animated:YES];
    }
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
