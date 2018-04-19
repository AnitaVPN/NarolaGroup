//
//  LeftMenuVC.h
//  NarolaGroups
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftMenuVC : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tblMenu;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;
@property (weak, nonatomic) IBOutlet UILabel *lblUserName;
@property (weak, nonatomic) IBOutlet UILabel *lblUserDesignation;
@property (strong, nonatomic) IBOutlet UIView *vwUserProfile;




@end
