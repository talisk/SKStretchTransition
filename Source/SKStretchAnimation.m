//
//  SKStretchAnimation.m
//  SKStretchTransition
//
//  Created by 孙恺 on 16/1/21.
//  Copyright © 2016年 sunkai. All rights reserved.
//

#import "SKStretchAnimation.h"

@interface SKStretchAnimation () {
    id<UIViewControllerContextTransitioning> _context;
    UIView *_transitioningView;
}

@end

@implementation SKStretchAnimation

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 1;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = [transitionContext containerView];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    if (self.type == SKAnimationPresent) {
        
        toViewController.view.transform = CGAffineTransformMakeTranslation(0, -[UIScreen mainScreen].bounds.size.height);
        [containerView insertSubview:toViewController.view aboveSubview:fromViewController.view];
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            toViewController.view.transform = CGAffineTransformMakeTranslation(0.0f, 0.0f);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
        
    } else if (self.type == SKAnimationDismiss) {
        [containerView insertSubview:toViewController.view belowSubview:fromViewController.view];
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fromViewController.view.transform = CGAffineTransformMakeTranslation(0, -[UIScreen mainScreen].bounds.size.height);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}

- (void)animationEnded:(BOOL) transitionCompleted {
    
}

@end
