//
//  SignUpVC.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFName;
@property (weak, nonatomic) IBOutlet UITextField *txtLName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmailAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtMobileNumber;
@property (weak, nonatomic) IBOutlet UITextField *txtDesignation;
//@property (weak, nonatomic) IBOutlet UITextField *txtCompanyName;
//@property (weak, nonatomic) IBOutlet UITextField *txtCountryName;
//@property (weak, nonatomic) IBOutlet UITextField *txtStateName;
//@property (weak, nonatomic) IBOutlet UITextField *txtCityName;
//@property (weak, nonatomic) IBOutlet UITextField *txtZipCode;
//@property (weak, nonatomic) IBOutlet UITextField *txtCompanyPhone;
//@property (weak, nonatomic) IBOutlet UITextField *txtCompanyWebsite;
@property (weak, nonatomic) IBOutlet UIButton *btnSignUp;
@property (weak, nonatomic) IBOutlet UIButton *btnImage;
//@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;
- (IBAction)btnSignUpClickEvent:(id)sender;
- (IBAction)btnProfileImageClickEvent:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *vwMain;
@property (weak, nonatomic) IBOutlet UIView *vwProfile;
//@property (weak, nonatomic) IBOutlet UIView *vwRequireDetails;
//@property (weak, nonatomic) IBOutlet UIView *vwPersonalDetails;
//@property (weak, nonatomic) IBOutlet UIView *vwCompanyDetails;
//@property (weak, nonatomic) IBOutlet UILabel *lblCompanyDetails;
//@property (weak, nonatomic) IBOutlet UILabel *lblPersonalDetails;


@end
