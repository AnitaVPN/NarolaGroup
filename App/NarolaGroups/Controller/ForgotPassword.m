//
//  ForgotPassword.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "ForgotPassword.h"
#import "Utils.h"

@interface ForgotPassword ()
{
    Utils *util;
}
@end

@implementation ForgotPassword

- (void)viewDidLoad {
    [super viewDidLoad];
    util = [[Utils alloc]init];
    [self textFeildSetup];
    
}
-(void)textFeildSetup
{
    [util setupTextFeild:_txtEmailAddress :[UIColor whiteColor] :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_user_white"]] :@"Enter Email Address"];
   
    _btnForgotPassword.layer.cornerRadius = 5;
    _btnForgotPassword.layer.borderWidth = .5;
    _btnForgotPassword.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [self.navigationItem.backBarButtonItem setTitle:@""];
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

- (IBAction)btnForgotPasswordClickEvent:(id)sender {
}
@end
