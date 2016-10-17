//
//  AnimationViewController.m
//  DemoVideoAnimation
//
//  Created by 房栋 on 2016/10/14.
//  Copyright © 2016年 dong. All rights reserved.
//

#import "AnimationViewController.h"

#define kNormalPlayHeight 150.f
#define kTargetScale (3/7)

@interface AnimationViewController ()

@property (nonatomic, strong) UIView *targetView;
//@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, assign) CGFloat origianWidth;
@property (nonatomic, assign) CGFloat totalRemoveY;
@property (nonatomic, assign) double normalAclcc;
@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.origianWidth = self.view.frame.size.width;
    self.totalRemoveY = self.view.frame.size.height - kNormalPlayHeight;
    
    self.navigationController.navigationBar.hidden = YES;
    
    _targetView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, kNormalPlayHeight)];
    _targetView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_targetView];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    [_targetView addGestureRecognizer:gesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handlePan:(UIPanGestureRecognizer*)recognizer
{
    CGPoint translation = [recognizer translationInView:self.view];
//    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
//                                         recognizer.view.center.y + translation.y);
//    [recognizer setTranslation:CGPointZero inView:self.view];
//
//    NSLog(@"translation x is : %f, translation y is : %f", translation.x, translation.y);
    
    
//    CGFloat translationY = translation.y;
//    
    CGFloat currentMovePercent = self.view.frame.origin.y/self.totalRemoveY;
//
//    CGFloat targetY = translationY;
//    CGFloat targetX = self.origianWidth*(1-kTargetScale)*currentMovePercent;
//    
//    
//    self.view.frame = CGRectMake(targetX,targetY, self.view.frame.size.width, self.view.frame.size.height);
    
    
    CGFloat scale = (double)4/7;
    
    CGRect temp = self.view.frame;
    temp.origin.x = self.origianWidth*scale*currentMovePercent;
    temp.origin.y += translation.y;
    
    CGRect targetViewRext = self.targetView.frame;
    targetViewRext.size.width = self.origianWidth - temp.origin.x - 2.f;
    targetViewRext.size.height = kNormalPlayHeight * targetViewRext.size.width / self.view.frame.size.width;
    self.targetView.frame = targetViewRext;
    
    self.view.frame = temp;
    [recognizer setTranslation:CGPointZero inView:self.view];

    
    
//    CGRect temp = self.view.frame;
//    temp.origin.x += translation.x;
//    temp.origin.y += translation.y;
//    
//    self.view.frame = temp;
//    [recognizer setTranslation:CGPointZero inView:self.view];
}
@end
