//
//  SecondViewController.m
//  HTNavigationButton
//
//  Created by 一米阳光 on 17/3/4.
//  Copyright © 2017年 一米阳光. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

/**
 *  返回按钮是导航控制器自动生成的
 *  返回按钮的标题默认是Back
 *  如果上一个视图控制器上面的导航条存在文字标题,那么压栈的第二个视图控制器的返回按钮的标题就是上一个导航条的标题
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    /**
     *  为导航条添加视图标题,视图标题位置的视图可以是任意类型的控件
     *  label的frame中x和y是无效值 可以设置成任意值
     *  label中心显示位置和导航条的中心点位置重合
     *  label如果不设置width的值 默认显示和文字内容长度相同
     *  label的高度尽量不超过导航条的高度
     */
    UILabel * label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 0, 30);
    label.text = @"第二页";
    label.backgroundColor = [UIColor yellowColor];
    self.navigationItem.titleView = label;
    
    //返回按钮可以重新设置
    UIBarButtonItem * leftBack = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(buttonClick:)];
    leftBack.tag = 101;
    //改变按钮颜色
    leftBack.tintColor = [UIColor greenColor];
    self.navigationItem.leftBarButtonItem = leftBack;
    
    UIBarButtonItem * rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(buttonClick:)];
    rightButton.tag = 102;
    rightButton.tintColor = [UIColor orangeColor];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)buttonClick:(id)sender
{
    if (((UIBarButtonItem *)sender).tag == 101) {
        //如果重新设置，返回按钮就不具备返回功能 必须手写代码进行返回
        [self.navigationController popViewControllerAnimated:YES];
    }else {
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
