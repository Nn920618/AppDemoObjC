//
//  BaseDemoLayoutExtend.h
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseDemoLayoutExtend : NSObject
+ (nonnull NSLayoutConstraint *)addLayoutWidth:(CGFloat)width
                                        atView:(nonnull UIView *)view;
+ (nonnull NSLayoutConstraint *)addLayoutHeight:(CGFloat)height
                                         atView:(nonnull UIView *)view;
+ (nonnull NSLayoutConstraint *)addLayoutTop:(CGFloat)top
                                      atView:(nonnull UIView *)view
                                   superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutBottom:(CGFloat)bottom
                                         atView:(nonnull UIView *)view
                                      superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutLeft:(CGFloat)left
                                       atView:(nonnull UIView *)view
                                    superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutRight:(CGFloat)right
                                        atView:(nonnull UIView *)view
                                     superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutCenterX:(CGFloat)centerX
                                          adView:(nonnull UIView *)view
                                       superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutCenterY:(CGFloat)centerY
                                          adView:(nonnull UIView *)view
                                       superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutTopView:(nonnull UIView *)topView
                                      bottomView:(nonnull UIView *)bottomView
                                       superView:(nonnull UIView *)superView
                                        distance:(CGFloat)distance;
+ (nonnull NSLayoutConstraint *)addLayoutLeftView:(nonnull UIView *)leftView
                                        rightView:(nonnull UIView *)rightView
                                        superView:(nonnull UIView *)superView
                                         distance:(CGFloat)distance;
+ (nonnull NSLayoutConstraint *)addLayoutDistanceCenterX:(CGFloat)distanceCenterX
                                                leftView:(nonnull UIView *)leftView
                                               rightView:(nonnull UIView *)rightView
                                               superView:(nonnull UIView *)superView;
+ (nonnull NSLayoutConstraint *)addLayoutDistanceCenterY:(CGFloat)distanceCenterY
                                                 topView:(nonnull UIView *)topView
                                              bottomView:(nonnull UIView *)bottomView
                                               superView:(nonnull UIView *)superView;

+ (nonnull UITableView *)loadBaseDemoTableViewInViewController:(nonnull UIViewController *)viewController;
@end
