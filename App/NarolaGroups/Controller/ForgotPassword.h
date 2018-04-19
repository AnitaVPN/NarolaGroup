//
//  ForgotPassword.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgotPassword : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtEmailAddress;
@property (weak, nonatomic) IBOutlet UIButton *btnForgotPassword;

- (IBAction)btnForgotPasswordClickEvent:(id)sender;

@end
