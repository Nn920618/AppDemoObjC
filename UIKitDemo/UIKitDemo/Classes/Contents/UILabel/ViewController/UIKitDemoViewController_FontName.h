//
//  UIKitDemoViewController_FontName.h
//  UIKitDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIKitDemoViewController_FontName;
@protocol UIKitDemoViewController_FontNameDelegate <NSObject>
@optional
- (void)fontNameViewController:(nonnull UIKitDemoViewController_FontName *)viewController
              selectedFontName:(nullable NSString *)fontName;
@end

@interface UIKitDemoViewController_FontName : UIViewController
@property (nonatomic, weak, nullable) id <UIKitDemoViewController_FontNameDelegate> delegate;
@end
