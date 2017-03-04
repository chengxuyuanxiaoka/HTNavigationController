//
//  ThirdViewController.m
//  HTNavigationButton
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self createUI];
    
}


- (void)createUI {
    //为了保持按钮的原有样式 需要借助UIButton控件，btn的x、y值无效 但是宽和高是有效值
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 50, 30);
    [btn setTitle:@"首页" forState:UIControlStateNormal];
    ;    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //按钮的点击事件必须写在UIButton上 而不能写在转化后的UIBarButtonItem上,否则点击事件不执行
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //导航条上的按钮类型必须是UIBarButtonItem样式
    //所以此处需要转换类型
    
    UIBarButtonItem * right1 = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    UIBarButtonItem * right2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    
    //为导航条添加多个按钮
    self.navigationItem.rightBarButtonItems = @[right1,right2];
}

- (void)buttonClick:(UIButton *)button {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
