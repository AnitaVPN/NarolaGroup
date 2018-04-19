//
//  ChangePassword.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChangePassword : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtCurrentPass;
@property (weak, nonatomic) IBOutlet UITextField *txtNewPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtConformPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnChangePassword;
- (IBAction)btnChangePasswordClickEvent:(id)sender;

@end
