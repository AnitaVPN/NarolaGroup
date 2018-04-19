//
//  GuestHomeVC.m
//  NarolaGroups
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "GuestHomeVC.h"
#import "LoginVC.h"
#import "SignUpVC.h"

@interface GuestHomeVC ()

@end

@implementation GuestHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _btnSignIn.layer.cornerRadius = 5;
    _btnSignIn.layer.borderColor = [UIColor whiteColor].CGColor;
    _btnSignIn.layer.borderWidth = 1.5;
    
    _btnSignUp.layer.cornerRadius = 5;
    _btnSignUp.layer.borderColor = [UIColor whiteColor].CGColor;
    _btnSignUp.layer.borderWidth = 1.5;
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = true;
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
- (IBAction)btnSignUpClickEvent:(id)sender {
    SignUpVC *loginVC = [[SignUpVC alloc]initWithNibName:@"SignUpVC" bundle:nil];
    [self.navigationItem.backBarButtonItem setTitle:@""]; self.navigationController.navigationBarHidden = false;
    [self.navigationController pushViewController:loginVC animated:YES];
}
- (IBAction)btnSignInClickEvent:(id)sender {
    
    LoginVC *loginVC = [[LoginVC alloc]initWithNibName:@"LoginVC" bundle:nil];
    [self.navigationItem.backBarButtonItem setTitle:@""]; self.navigationController.navigationBarHidden = false;
    [self.navigationController pushViewController:loginVC animated:YES];
}



@end
