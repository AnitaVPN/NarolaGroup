//
//  Utils.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "Utils.h"

@interface Utils ()

@end

@implementation Utils

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)validatePhoneNumberWithString:(NSString *)string {
    if (nil == string || ([string length] < 2 ) )
        return NO;
    
    NSError *error;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    NSArray *matches = [detector matchesInString:string options:0 range:NSMakeRange(0, [string length])];
    for (NSTextCheckingResult *match in matches) {
        if ([match resultType] == NSTextCheckingTypePhoneNumber) {
            NSString *phoneNumber = [match phoneNumber];
            if ([string isEqualToString:phoneNumber]) {
                return YES;
            }
        }
    }
    
    return NO;
}

-(BOOL) NSStringIsValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITextField *)setupTextFeild :(UITextField *)txtFeild :(UIColor *)txtTextColor :(BOOL)isLeftView :(UIImageView*)image :(NSString *)placeHolderText
{
    
    UIImageView  * iconEmail = image;
    iconEmail.frame = CGRectMake(5, 0.0, iconEmail.image.size.width+15.0, iconEmail.image.size.height);
    iconEmail.contentMode = UIViewContentModeCenter;
    
    txtFeild.leftView = iconEmail;
    txtFeild.leftViewMode = UITextFieldViewModeAlways;
    
    UIColor *color = txtTextColor;
    
    txtFeild.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeHolderText attributes:@{NSForegroundColorAttributeName: color, NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Medium" size:14.0]}];
    
    txtFeild.layer.cornerRadius = 5;
    //txtFeild.layer.borderWidth = .5;
    
    return txtFeild;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
