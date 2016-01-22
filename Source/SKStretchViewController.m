//
//  SKStretchViewController.m
//  SKStretchTransition
//
//  Created by 孙恺 on 16/1/22.
//  Copyright © 2016年 sunkai. All rights reserved.
//

#import "SKStretchViewController.h"
#import "SKStretchAnimation.h"

@interface SKStretchViewController ()<UIViewControllerTransitioningDelegate> {
    SKStretchAnimation *_stretchAnimationController;
}

@end

@implementation SKStretchViewController

#pragma mark - UIViewControllerTransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    _stretchAnimationController.type = SKAnimationPresent;
    return _stretchAnimationController;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    _stretchAnimationController.type = SKAnimationDismiss;
    return _stretchAnimationController;
}

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
