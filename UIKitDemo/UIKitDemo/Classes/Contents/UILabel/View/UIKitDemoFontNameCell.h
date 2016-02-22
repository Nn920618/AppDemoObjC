//
//  UIKitDemoFontNameCell.h
//  UIKitDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <BaseDemo/BaseDemo.h>

@interface UIKitDemoFontNameRowContent : BaseDemoTableRowContent
@property (readonly, nonatomic, strong, nullable) NSString *detailText;
@property (readonly, nonatomic, strong, nullable) UIFont *textFont;
@property (readonly, nonatomic, assign) CGFloat textHeight;
- (nullable instancetype)initWithText:(nullable NSString *)text
                                value:(nullable id)value
                            cellClass:(nullable Class)cellClass
                           detailText:(nullable NSString *)detailText
                             textFont:(nullable UIFont *)textFont;
@end

@interface UIKitDemoFontNameCell : BaseDemoTableViewCell
- (void)loadContent:(nonnull UIKitDemoFontNameRowContent *)rowContent;
@end
