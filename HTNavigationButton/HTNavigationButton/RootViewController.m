//
//  ViewController.m
//  HTNavigationButton
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
    
    self.view.backgroundColor = [UIColor cyanColor];
    //为导航条添加文字标题，默认标题的显示位置在导航条正中间
    self.navigationItem.title = @"第一个页面";
    //为导航条添加文字按钮
    UIBarButtonItem * leftButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"分类" style:UIBarButtonItemStylePlain target:nil action:nil];
    //将按钮添加到导航条的左侧
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    UIBarButtonItem * rightButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStyleDone target:self action:@selector(barButtonClick:)];
    //将按钮添加到导航条的右侧
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
}

- (void)barButtonClick:(id)sender {
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
