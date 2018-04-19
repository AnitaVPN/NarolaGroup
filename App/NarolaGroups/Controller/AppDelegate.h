//
//  AppDelegate.h
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;
-(void)setupRootVCRegisterUser;
-(void)setupRootVC;


@end

