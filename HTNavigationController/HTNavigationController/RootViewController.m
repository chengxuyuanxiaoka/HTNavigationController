//
//  ViewController.m
//  HTNavigationController
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第一个页面";
    self.navigationController.navigationBar.backgroundColor = [UIColor yellowColor];
    self.view.backgroundColor = [UIColor greenColor];
    [self createButton];
    
}

- (void)createButton {
    /**
     *  状态栏高度20
     *  导航条的高度44
     *  在视图上添加的控件y坐标尽量大于等于64,这样的话就不会发生重叠
     */
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 200, CGRectGetWidth(self.view.bounds)-200, 30);
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick:(UIButton *)button {
    /**
     *  iOS7.0系统,使用导航控制器的方法进行界面切换会出现卡顿的现象
     *  解决办法就是为跳转过去的界面添加背景颜色
     *  导航控制器的原理和栈的原理相同
     *  使用push方法,实际就是一个压栈的过程
     *  后push的显示在最上面 那么最上面的视图控制器上的视图就是显示在窗口上的视图
     *  导航条是悬浮在所有视图之上
     */
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
