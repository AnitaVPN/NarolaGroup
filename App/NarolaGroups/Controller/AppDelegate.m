//
//  AppDelegate.m
//  NarolaGroups
//
//  Created by Apple on 17/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "AppDelegate.h"
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"
#import "LeftMenuVC.h"
#import "HomeVC.h"
#import "GlobalConstant.h"
#import "MMDrawerController.h"
//#import ""
#import "MMExampleDrawerVisualStateManager.h"
#import "MMNavigationController.h"

#import "GuestHomeVC.h"
#import "LoginVC.h"
#import "SignUpVC.h"
#import "ChangePassword.h"
#import "ForgotPassword.h"
#import "LeftMenuVC.h"


@interface AppDelegate ()
@property (nonatomic,strong) MMDrawerController * drawerController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    BOOL isUserActivate = [[NSUserDefaults standardUserDefaults]valueForKey:isUserLogin];
    
    
    if(isUserActivate)
    {
        [self setupRootVCRegisterUser];

    }
    else
    {
        [self setupRootVC];

    }
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"NarolaGroups"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}


#pragma mark - SetupRootVC
-(void)setupRootVC
{
    
    GuestHomeVC *vc = [[GuestHomeVC alloc]initWithNibName:@"GuestHomeVC" bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    nav.navigationBarHidden = true;
//    nav.navigationItem.n
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
  
}
-(void)setupRootVCRegisterUser
{
     UIViewController * leftSideDrawerViewController = [[LeftMenuVC alloc] init];
    UIViewController * centerViewController = [[HomeVC alloc] init];
     
    UINavigationController * navigationController = [[MMNavigationController alloc] initWithRootViewController:centerViewController];
     [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey"];
     //    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
     //    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey"];
     UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
     [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey"];
     self.drawerController = [[MMDrawerController alloc]
     initWithCenterViewController:navigationController
     leftDrawerViewController:leftSideNavController
     rightDrawerViewController:nil];
     
     [self.drawerController setShowsShadow:NO];
     [self.drawerController setRestorationIdentifier:@"MMDrawer"];
     [self.drawerController setMaximumRightDrawerWidth:200.0];
     [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
     [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
     
     [self.drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
     MMDrawerControllerDrawerVisualStateBlock block;
     block = [[MMExampleDrawerVisualStateManager sharedManager]
     drawerVisualStateBlockForDrawerSide:drawerSide];
     if(block){
     block(drawerController, drawerSide, percentVisible);
     }
     }];
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     
//     UIColor * tintColor = [UIColor colorWithRed:29.0/255.0
//     green:173.0/255.0
//     blue:234.0/255.0
//     alpha:1.0];
     //[self.window setTintColor:tintColor];
    [self.window setTintColor:APP_BUTTONS_COLOR];
    [self.window setBackgroundColor:APP_BUTTONS_COLOR];
     self.drawerController.navigationController.navigationBarHidden = true;
    
     [self.window setRootViewController:self.drawerController];
      [self.window makeKeyAndVisible];
}

@end
