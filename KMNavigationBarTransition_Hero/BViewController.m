//
//  BViewController.m
//  KMNavigationBarTransition_Hero
//
//  Created by pinbeitec on 2020/10/12.
//  Copyright © 2020 pinbeitec. All rights reserved.
//

#import "BViewController.h"
#import <Hero-Swift.h>

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationController.navigationBar.barTintColor = UIColor.clearColor;
    //非透明导航栏
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"pagecontrolLine"] forBarMetrics:UIBarMetricsDefault];
    //透明导航栏
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(150, 0, 50, 200);
    btn.backgroundColor = UIColor.greenColor;
    [btn addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    btn.heroID = @"TOB";
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)pop{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
