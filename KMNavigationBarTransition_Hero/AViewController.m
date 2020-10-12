//
//  AViewController.m
//  KMNavigationBarTransition_Hero
//
//  Created by pinbeitec on 2020/10/12.
//  Copyright © 2020 pinbeitec. All rights reserved.
//

#import "AViewController.h"
#import <Hero-Swift.h>
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationController.navigationBar.barTintColor = UIColor.redColor;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"homeNavBack"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, 50, 150);
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(pushB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn.heroID = @"TOB";
    
}

- (void)pushB{
    [self.navigationController pushViewController:[BViewController new] animated:YES];
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
