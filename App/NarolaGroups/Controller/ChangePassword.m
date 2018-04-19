//
//  ChangePassword.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "ChangePassword.h"
#import "Utils.h"

@interface ChangePassword ()
{
    Utils *util;
}
@end

@implementation ChangePassword

- (void)viewDidLoad {
    [super viewDidLoad];
    util = [[Utils alloc]init];
    [self setupTextFeild];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTextFeild
{
    [util setupTextFeild:_txtCurrentPass :[UIColor whiteColor] :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_white"]] :@"Enter Current Password"];
    [util setupTextFeild:_txtNewPassword :[UIColor whiteColor] :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_white"]] :@"Enter New Password"];
    [util setupTextFeild:_txtConformPassword :[UIColor whiteColor] :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password_white"]] :@"Enter Confirm Password"];
   
    _btnChangePassword.layer.cornerRadius = 5;
    _btnChangePassword.layer.borderWidth = .5;
    _btnChangePassword.layer.borderColor = [UIColor whiteColor].CGColor;

    [self.navigationItem.backBarButtonItem setTitle:@""];
}

- (IBAction)btnChangePasswordClickEvent:(id)sender {
}
@end
