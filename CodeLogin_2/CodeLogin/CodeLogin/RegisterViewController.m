//
//  RegisterViewController.m
//  CodeLogin
//
//  Created by 侯成枫 on 2019/8/17.
//  Copyright © 2019 zj. All rights reserved.
//

#import "RegisterViewController.h"
#define SCREEN_SIZE   [UIScreen mainScreen].bounds.size

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, SCREEN_SIZE.width - 40, 60)];
    label.font = [UIFont systemFontOfSize:23];
    label.text = @"注册页面";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    //返回按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(SCREEN_SIZE.width/2 - 50, 220, 100, 30);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(backPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)backPress{
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
