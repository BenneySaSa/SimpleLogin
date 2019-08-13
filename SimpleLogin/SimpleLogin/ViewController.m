
#import "ViewController.h"

@interface ViewController ()
{
    NSString * acc;
    NSString * ps;
}
//账号文本框
@property(weak,nonatomic) IBOutlet UITextField *txtAccount;
//密码文本框
@property(weak,nonatomic) IBOutlet UITextField *txtPSD;
//注册登陆按钮事件
-(IBAction)btnLogin;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)btnLogin
{
    //NSString * account=self.txtAccount.text;
    //NSString * psd=self.txtPSD.text;
    //NSLog(@"APP账号：%@;APP密码：%@",account,psd);
    if([acc isEqualToString:@"8888"]&&[ps isEqualToString:@"12345"])
    {
        NSLog(@"恭喜你，登陆成功！");
    }
    else
    {
        NSLog(@"呜呜呜，登陆失败！");
    }
    [self.view endEditing:YES];
}


@end
