//
//  HomeVC.m
//  NarolaGroups
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NAROLA GROUPS";
    
    int st = statusBarHeight;
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
    
    NSMutableArray *leftBtns = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_menu"] style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonPressed)];
    [leftBtns addObject:leftBtn];
    
    
    [self.navigationController.navigationBar setTintColor:APP_BUTTONS_COLOR];
    
    
    [self.navigationController.navigationItem setLeftBarButtonItems:leftBtns animated:NO];
    
    [self.navigationItem setLeftBarButtonItems:leftBtns animated:NO];

}

- (BOOL)prefersStatusBarHidden {
    return NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidLayoutSubviews
{
      [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
}


-(void)leftButtonPressed
{
  [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
}

-(MMDrawerController*)mm_drawerController{
    UIViewController *parentViewController = self.parentViewController;
    while (parentViewController != nil) {
        if([parentViewController isKindOfClass:[MMDrawerController class]]){
            return (MMDrawerController *)parentViewController;
        }
        parentViewController = parentViewController.parentViewController;
    }
    return nil;
}

@end
