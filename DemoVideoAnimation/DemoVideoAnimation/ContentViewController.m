//
//  ContentViewController.m
//  DemoVideoAnimation
//
//  Created by 房栋 on 2016/10/14.
//  Copyright © 2016年 dong. All rights reserved.
//

#import "ContentViewController.h"

#import "AnimationViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor grayColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 75, 75);
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(clickActionww) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickActionww {
    
    AnimationViewController *vc = [[AnimationViewController alloc] init];
    
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
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
