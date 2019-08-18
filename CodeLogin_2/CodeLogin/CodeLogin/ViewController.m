//
//  ViewController.m
//  CodeLogin
//
//  Created by 侯成枫 on 2019/8/17.
//  Copyright © 2019 zj. All rights reserved.
//

#import "ViewController.h"
#import"RegisterViewController.h"
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size

@interface ViewController ()
{
    UITextField *textLogin;
    UITextField *textPSD;
}
-(void)login;
-(void)register;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //标签
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(SCREEN_SIZE.width/2-40, 50, 120, 60)];
    label.text=@"WASUN";
    label.font=[UIFont systemFontOfSize:24];
    label.textColor=[UIColor greenColor];
    [self.view addSubview:label];
    //用户名对话框
    textLogin=[[UITextField alloc]initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width-40, 30)];
    textLogin.borderStyle=UITextBorderStyleRoundedRect;
    textLogin.placeholder=@"请输入用户名";
    
    UIImageView *loginImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    loginImage.image=[UIImage imageNamed:@"bg_icon_bind"];
    textLogin.leftView=loginImage;
    textLogin.leftViewMode=UITextFieldViewModeAlways;
    [self.view addSubview:textLogin];
    
    //密码对话框
    textPSD=[[UITextField alloc]initWithFrame:CGRectMake(20, 180, SCREEN_SIZE.width-40, 30)];
    textPSD.borderStyle=UITextBorderStyleRoundedRect;
    textPSD.placeholder=@"请输入密码";
    textPSD.secureTextEntry=YES;
    
    UIImageView *passImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    passImage.image=[UIImage imageNamed:@"bg_icon_intro"];
    textPSD.leftView=passImage;
    textPSD.leftViewMode=UITextFieldViewModeAlways;
    [self.view addSubview:textPSD];
    
    //创建登陆按钮
    UIButton *loginBtn=[[UIButton alloc]init];
    loginBtn.frame=CGRectMake(SCREEN_SIZE.width/4-50, 250, 100, 30);
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    loginBtn.layer.masksToBounds=YES;
    loginBtn.layer.cornerRadius=10;
    loginBtn.backgroundColor=[UIColor grayColor];
    [loginBtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    //创建注册按钮
    UIButton *regBtn=[[UIButton alloc]init];
    regBtn.frame=CGRectMake(SCREEN_SIZE.width/4*3-50, 250, 100, 30);
    [regBtn setTitle:@"注册" forState:UIControlStateNormal];
    regBtn.layer.masksToBounds=YES;
    regBtn.layer.cornerRadius=10;
    regBtn.backgroundColor=[UIColor grayColor];
    [self.view addSubview:regBtn];
    [loginBtn addTarget:self action:@selector(register) forControlEvents:UIControlEventTouchUpInside];
}
//登陆前的检查
-(void)login
{
    if (textLogin.text.length == 0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"登录名不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:nil];
        return;
    }
    
    if (textPSD.text.length == 0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"密码不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];//回到主页面
        
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:nil];
        return;
    }
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"登录成功" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];//回到主页面
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)register
{
    RegisterViewController *registe = [[RegisterViewController alloc]init];
    [self presentViewController:registe animated:true completion:nil];
    
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
