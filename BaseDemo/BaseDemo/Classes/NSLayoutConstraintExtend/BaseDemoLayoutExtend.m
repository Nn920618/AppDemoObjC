//
//  BaseDemoLayoutExtend.m
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "BaseDemoLayoutExtend.h"

@implementation BaseDemoLayoutExtend
+ (nonnull NSLayoutConstraint *)addLayoutWidth:(CGFloat)width
                                        atView:(nonnull UIView *)view
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:width];
    [view addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutHeight:(CGFloat)height
                                         atView:(nonnull UIView *)view
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:height];
    [view addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutTop:(CGFloat)top
                                      atView:(nonnull UIView *)view
                                   superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superView
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1
                                                               constant:top];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutBottom:(CGFloat)bottom
                                         atView:(nonnull UIView *)view
                                      superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:superView
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:bottom];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutLeft:(CGFloat)left
                                       atView:(nonnull UIView *)view
                                    superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superView
                                                              attribute:NSLayoutAttributeLeft
                                                             multiplier:1
                                                               constant:left];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutRight:(CGFloat)right
                                        atView:(nonnull UIView *)view
                                     superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:superView
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1
                                                               constant:right];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutCenterX:(CGFloat)centerX
                                          adView:(nonnull UIView *)view
                                       superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:superView
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1
                                                               constant:centerX];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutCenterY:(CGFloat)centerY
                                          adView:(nonnull UIView *)view
                                       superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:superView
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:view
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1
                                                               constant:centerY];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutTopView:(nonnull UIView *)topView
                                      bottomView:(nonnull UIView *)bottomView
                                       superView:(nonnull UIView *)superView
                                        distance:(CGFloat)distance
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:bottomView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:topView
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:distance];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutLeftView:(nonnull UIView *)leftView
                                        rightView:(nonnull UIView *)rightView
                                        superView:(nonnull UIView *)superView
                                         distance:(CGFloat)distance
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:rightView
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:leftView
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1
                                                               constant:distance];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutDistanceCenterX:(CGFloat)distanceCenterX
                                                 leftView:(nonnull UIView *)leftView
                                               rightView:(nonnull UIView *)rightView
                                               superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:leftView
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:rightView
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1
                                                               constant:distanceCenterX];
    [superView addConstraint:result];
    return result;
}
+ (nonnull NSLayoutConstraint *)addLayoutDistanceCenterY:(CGFloat)distanceCenterY
                                                 topView:(nonnull UIView *)topView
                                              bottomView:(nonnull UIView *)bottomView
                                               superView:(nonnull UIView *)superView
{
    NSLayoutConstraint *result = [NSLayoutConstraint constraintWithItem:topView
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:bottomView
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1
                                                               constant:distanceCenterY];
    [superView addConstraint:result];
    return result;
}


+ (nonnull UITableView *)loadBaseDemoTableViewInViewController:(nonnull UIViewController *)viewController
{
    viewController.automaticallyAdjustsScrollViewInsets = NO;
    CGRect tableRect = CGRectMake(0, 0,
                                  CGRectGetWidth(viewController.view.frame),
                                  CGRectGetHeight(viewController.view.frame));
    UITableView *tableView = [[UITableView alloc] initWithFrame:tableRect
                                                          style:UITableViewStylePlain];
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [viewController.view addSubview:tableView];
    [self addLayoutTopView:(id)viewController.topLayoutGuide
                bottomView:tableView
                 superView:viewController.view
                  distance:0];
    [self addLayoutTopView:tableView
                bottomView:(id)viewController.bottomLayoutGuide
                 superView:viewController.view
                  distance:0];
    [self addLayoutLeft:0
                 atView:tableView
              superView:viewController.view];
    [self addLayoutRight:0
                  atView:tableView
               superView:viewController.view];
    return tableView;
}
@end
