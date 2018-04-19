//
//  SignUpVC.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "SignUpVC.h"
#import "Utils.h"

@interface SignUpVC ()
{
    Utils *utils;
}
@end

@implementation SignUpVC

- (void)viewDidLoad {
    [super viewDidLoad];
    utils = [[Utils alloc]init];
    [self setupView];
  //  [self setupTextFeilds];
    
}

-(void)viewWillAppear:(BOOL)animated
{
     //[self setupTextFeilds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupView
{
    UIColor *color = [UIColor colorWithRed:72.0/255.0 green:71.0/255.0 blue:115.0/255.0 alpha:1.0];

    
    [utils setupTextFeild:_txtFName :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_user"]] :@"Enter First Name"];
    [utils setupTextFeild:_txtLName :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_user"]] :@"Enter Last Name"];
    [utils setupTextFeild:_txtEmailAddress:color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_email"]] :@"Enter Email Address"];
    [utils setupTextFeild:_txtDesignation :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_password"]] :@"Enter Password"];
    [utils setupTextFeild:_txtMobileNumber :color :YES :[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_phone"]] :@"Enter Mobile Number"];
    
    
    _btnSignUp.layer.cornerRadius = 5;
    _btnSignUp.clipsToBounds = true;
    
    _btnImage.layer.cornerRadius = _btnImage.frame.size.width/2;
    _btnImage.clipsToBounds = true;
    
    _vwProfile.layer.cornerRadius = 8;
    _vwProfile.clipsToBounds = true;
    [self.navigationItem.backBarButtonItem setTitle:@""];

}

- (IBAction)btnSignUpClickEvent:(id)sender {
}

- (IBAction)btnProfileImageClickEvent:(id)sender {
}
@end
