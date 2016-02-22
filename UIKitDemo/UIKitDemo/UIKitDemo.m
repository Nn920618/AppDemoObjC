//
//  UIKitDemo.m
//  UIKitDemo
//
//  Created by Nn on 16/2/17.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemo.h"
#import "UIKitDemoMainViewController.h"

@implementation UIKitDemo
+ (nullable UIViewController *)startViewController
{
    UIKitDemoMainViewController *result = [[UIKitDemoMainViewController alloc] init];
    return result;
}
@end
