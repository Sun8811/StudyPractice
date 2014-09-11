//
//  QYViewController.m
//  TransitionViewController
//
//  Created by qingyun on 14-8-30.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UIImageView *flipImageView;
@property (strong, nonatomic) IBOutlet UIImageView *mainImageView;

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)flipImageView:(UIButton *)sender
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.75];
    //    第一个参数是设置页过渡的效果
    [UIView setAnimationTransition:[self.mainImageView superview] ? UIViewAnimationTransitionFlipFromRight:UIViewAnimationTransitionFlipFromLeft  forView:_containerView cache:YES];
    
    //    如果flipImageView没有父视图， 则说明当前containerView显示的mainImageView,
    //    如果flipImageView存在父视图，则说明当前containerView显示的就是flipImageView
    if ([self.flipImageView superview]) {
        [self.flipImageView removeFromSuperview];
        [self.containerView addSubview:self.mainImageView];
    }else
    {
        [self.mainImageView removeFromSuperview];
        [self.containerView addSubview:self.flipImageView];
    }
    
    [UIView commitAnimations];

}
- (IBAction)curlImageView:(UIButton *)sender
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.75];
    //    第一个参数是设置页过渡的效果
    [UIView setAnimationTransition:[self.mainImageView superview] ? UIViewAnimationTransitionCurlDown :UIViewAnimationTransitionCurlUp forView:_containerView cache:YES];
    
    //    如果flipImageView没有父视图， 则说明当前containerView显示的mainImageView,
    //    如果flipImageView存在父视图，则说明当前containerView显示的就是flipImageView
    if ([self.flipImageView superview]) {
        [self.flipImageView removeFromSuperview];
        [self.containerView addSubview:self.mainImageView];
    }else
    {
        [self.mainImageView removeFromSuperview];
        [self.containerView addSubview:self.flipImageView];
    }
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
