//
//  GlobalConstant.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalConstant : NSObject
extern NSString *const FileExtension;


//WebService
#define SERVER_URL @"";
#define subDomainURL @""
#define loginURL @"";
#define SignUpURL @"";
#define ForgotPasswordURL @"";
#define changePasswordURL @"";

//APP SETTINGS
#define APP_BACKGROUND_IMAGE @"" ;
#define AppName @"NarolaGroup" ;
#define APP_COLOR @"";
#define APP_BACKGROUND_COLOR [UIColor redColor];
#define APP_BUTTONS_COLOR @""
#define APP_LABEL_COLOR @""
#define APP_STATUSBAR_COLOR @""
#define APP_NAVIGATIONBAR_COLOR @""
#define APP_SPLASH_SCREEN @""
#define AppDeleObj ((AppDelegate *)[[UIApplication sharedApplication] delegate])
@end
