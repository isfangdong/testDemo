//
//  ViewController.m
//  DemoVideoAnimation
//
//  Created by 房栋 on 2016/10/14.
//  Copyright © 2016年 dong. All rights reserved.
//

#import "ViewController.h"

#import "AnimationViewController.h"
#import "ContentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClicked:(id)sender {
    
    AnimationViewController *vc = [[AnimationViewController alloc] init];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self.view addSubview:navi.view];
}

@end
