//
//  SKStretchAnimation.h
//  SKStretchTransition
//
//  Created by 孙恺 on 16/1/21.
//  Copyright © 2016年 sunkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SKAnimationType) {
    SKAnimationPresent,
    SKAnimationDismiss
};

@interface SKStretchAnimation : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) SKAnimationType type;

@end
