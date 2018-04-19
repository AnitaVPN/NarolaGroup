//
//  LoginVC.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "LoginVC.h"
#import "Utils.h"
#import "ForgotPassword.h"

@interface LoginVC ()
{
    Utils *util;
}
@end

@implementation LoginVC

- (void)viewDidLoad {
    util = [[Utils alloc]init];
    [super viewDidLoad];
    [self textFeildSetup];
    [self setupNavigationBar];
    
}

#pragma mark - Custom Methods
-(void)textFeildSetup
{

UIColor *color = [UIColor whiteColor];
    
[util setupTextFeild:_txtUserName :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_user_white"]] :@"Enter Email Address"];
    
[util setupTextFeild:_txtPassword :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_white"]] :@"Enter Password"];
    
 
    _btnLogin.layer.cornerRadius = 5;
    _btnLogin.layer.borderWidth = .5;
    _btnLogin.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [self.navigationItem.backBarButtonItem setTitle:@""];
    
}

-(void)setupNavigationBar
{
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setTintColor:[UIColor whiteColor]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:134/255.0 green:134/255.0 blue:161/255.0 alpha:1];
    
    //    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    
}

- (void) drawPlaceholderInRect:(CGRect)rect {
    [[UIColor whiteColor] setFill];
   
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

#pragma mark - Button Click Events
- (IBAction)btnLoginButtonClick:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setBool:true forKey:isUserLogin];
    [[NSUserDefaults standardUserDefaults] synchronize];

    [AppDeleObj setupRootVCRegisterUser];
    
}
- (IBAction)btnForgotPasswordClickEvent:(id)sender {
    
    ForgotPassword *vc = [[ForgotPassword alloc]initWithNibName:@"ForgotPassword" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)btnSignUpClickEvent:(id)sender {
}
@end
