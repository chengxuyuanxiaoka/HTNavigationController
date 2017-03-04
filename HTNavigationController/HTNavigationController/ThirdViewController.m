//
//  ThirdViewController.m
//  HTNavigationController
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第三个页面";
    self.view.backgroundColor = [UIColor purpleColor];
    [self createButton];
    
}

- (void)createButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"回到主界面" forState:UIControlStateNormal];
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
        //跳转到根视图控制器位置
        [self.navigationController popToRootViewControllerAnimated:YES];
    }else if (button.tag == 102) {
        //跳转到下一个页面
        FourthViewController * fourVC = [[FourthViewController alloc] init];
        [self.navigationController pushViewController:fourVC animated:YES];
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
