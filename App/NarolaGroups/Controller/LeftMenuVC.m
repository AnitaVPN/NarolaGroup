//
//  LeftMenuVC.m
//  NarolaGroups
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 VPN. All rights reserved.
//

#import "LeftMenuVC.h"
#import "cell_sidemenu.h"
#import "GlobalConstant.h"

@interface LeftMenuVC ()
{
    NSMutableDictionary *arrMenuItems;
    int lastSelectedTab;
}
@end

@implementation LeftMenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    arrMenuItems = [[NSMutableDictionary alloc]init];
    [arrMenuItems setValue:@"Home" forKey:@"Home"];
    [arrMenuItems setValue:@"Search" forKey:@"Search"];
    [arrMenuItems setValue:@"Inquiry" forKey:@"Inquiry"];
    [arrMenuItems setValue:@"WishList" forKey:@"WishList"];
    [arrMenuItems setValue:@"My Orders" forKey:@"My Orders"];
    [arrMenuItems setValue:@"Share" forKey:@"Share"];
    [self setupTableView];
    self.navigationController.navigationBarHidden = true;
    self.navigationController.navigationBar.hidden = true;
   

}

-(void)viewWillAppear:(BOOL)animated
{
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    _imgProfile.layer.cornerRadius = _imgProfile.frame.size.width/2;
    _imgProfile.clipsToBounds = true;
    _imgProfile.layer.masksToBounds = true;
    
    [headerView addSubview:_vwUserProfile];
    _vwUserProfile.clipsToBounds = true;
    _vwUserProfile.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150);
    headerView.backgroundColor = [UIColor clearColor];
    _tblMenu.tableHeaderView = headerView;
}



-(void)setupTableView
{
    self.tblMenu.delegate = self;
    self.tblMenu.dataSource = self;
    
}

#pragma mark -  UITableView Delegate and Datasource methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrMenuItems.allKeys count];    //count of section
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;    //count number of row from counting array hear cataGorry is An Array
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"cell";
    
    cell_sidemenu *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[cell_sidemenu alloc] initWithStyle:UITableViewCellStyleDefault
            reuseIdentifier:MyIdentifier];
    }
    
    cell.lblMenuName.text = arrMenuItems.allKeys[indexPath.row];
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{}



- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 52;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 50)];
    [view setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *imgIcons = [[UIImageView alloc]init];
    imgIcons.frame = CGRectMake(10, 12, 25, 25);
    imgIcons.image = [UIImage imageNamed:@"diamond"];
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(55, 0,[UIScreen mainScreen].bounds.size.width - 100, 50)];
    lbl.textAlignment = NSTextAlignmentLeft;
    lbl.textColor = APP_BUTTONS_COLOR;
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:17.0];
    lbl.text = arrMenuItems.allValues[section];
    lbl.tag = 100 + section;
    
    UIButton *btnTap = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
    btnTap.tag = section;
    [btnTap addTarget:self action:@selector(selectTab:) forControlEvents:UIControlEventTouchUpInside];
    [btnTap setBackgroundColor:[UIColor clearColor]];
    [btnTap setTitle:@"" forState:UIControlStateNormal];
    
    UIView *separator = [[UIView alloc] initWithFrame:CGRectMake(0, view.frame.size.height, view.frame.size.width, 1)];
    [separator setBackgroundColor:APP_BUTTONS_COLOR];
    
    if(section == lastSelectedTab)
    {
        view.backgroundColor = APP_BUTTONS_COLOR;
        lbl.textColor = [UIColor whiteColor];
        NSLog(@"enter into selected tab - %d",lastSelectedTab);
    }
    else
    {
        NSLog(@"enter into selected non tab - %d",section);
        lbl.textColor = APP_BUTTONS_COLOR;
        view.backgroundColor = [UIColor whiteColor];
    }
    
    
    [view addSubview:separator];
    [view addSubview:imgIcons];
    [view addSubview:lbl];
    [view addSubview:btnTap];
    view.tag = section;
    
    return view;
}


-(IBAction)selectTab:(UIButton *)sender
{
    NSLog(@"Selected Tab is %ld",(long)sender.tag);
    lastSelectedTab = (int)sender.tag;
    [_tblMenu reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
