//
//  ViewController.m
//  HTNavigationToolBar
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation RootViewController

/**
 *  工具条和导航条一样是所有子视图控制器共有的,有且只有一个
 *  在一个视图控制器上修改导航条或者工具条,其他视图控制器上悬浮的导航条或者工具条也会发生变化
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    [self createToolBar];
    [self createLabel];
    
}

- (void)createLabel {
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, CGRectGetWidth(self.view.bounds)-20, 30)];
    self.label.textColor = [UIColor redColor];
    [self.view addSubview:self.label];
}

- (void)createToolBar {
    //工具条是导航控制器的视图,默认是隐藏的
    self.navigationController.toolbarHidden = NO;
    //工具条和导航条一样都是无色半透明状态
    self.navigationController.toolbar.barTintColor = [UIColor yellowColor];
    self.navigationController.toolbar.tintColor = [UIColor blueColor];
    
    //为工具条添加按钮
    //和导航条添加按钮的样式完全相同
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(buttonClick:)];
    item1.tag = 101;
    item1.tintColor = [UIColor redColor];
    UIBarButtonItem * item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(buttonClick:)];
    item2.tag = 102;
    item2.tintColor = [UIColor orangeColor];
    UIBarButtonItem * item3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(buttonClick:)];
    item3.tag = 103;
    item3.tintColor = [UIColor purpleColor];
    UIBarButtonItem * item4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(buttonClick:)];
    item4.tag = 104;
    item4.tintColor = [UIColor brownColor];
    
    //UIBarButtonSystemItemFlexibleSpace:间距按钮,会将工具条上的其他按钮 等距离摆放
    UIBarButtonItem * item5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //每一个视图控制器都具有的方法
    self.toolbarItems = @[item5,item1,item5,item2,item5,item3,item5,item4,item5];
}

- (void)buttonClick:(UIBarButtonItem *)sender {
    self.label.text = [NSString stringWithFormat:@"%ld",sender.tag];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
