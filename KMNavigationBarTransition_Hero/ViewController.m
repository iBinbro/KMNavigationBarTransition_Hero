//
//  ViewController.m
//  KMNavigationBarTransition_Hero
//
//  Created by pinbeitec on 2020/10/12.
//  Copyright © 2020 pinbeitec. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import <Hero-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
     UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[AViewController new]];
    nav.isHeroEnabled = true;
    
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:NO completion:NULL];
}


@end
