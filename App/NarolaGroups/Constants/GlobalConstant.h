//
//  GlobalConstant.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"


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
#define APP_LABEL_COLOR @""
#define APP_STATUSBAR_COLOR @""
#define APP_NAVIGATIONBAR_COLOR @""
#define APP_SPLASH_SCREEN @""

#define AppDeleObj ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#define APP_BUTTONS_COLOR [UIColor colorWithRed:72.0/255.0 green:71.0/255.0 blue:115.0/255.0 alpha:1.0]
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define isUserLogin @"isUserLogin"
#define statusBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height);



@end
