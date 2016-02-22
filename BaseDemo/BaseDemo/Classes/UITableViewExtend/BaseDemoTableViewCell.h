//
//  BaseDemoTableViewCell.h
//  BaseDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseDemoTableRowContent;

@interface BaseDemoTableViewCell : UITableViewCell
+ (nonnull NSString *)identifier;
+ (UITableViewCellStyle)cellStyle;
+ (nonnull instancetype)create;
- (void)loadContent:(nonnull BaseDemoTableRowContent *)rowContent;
@end
