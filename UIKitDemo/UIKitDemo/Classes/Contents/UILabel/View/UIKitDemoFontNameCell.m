//
//  UIKitDemoFontNameCell.m
//  UIKitDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemoFontNameCell.h"

@implementation UIKitDemoFontNameCell

+ (UITableViewCellStyle)cellStyle
{
    return UITableViewCellStyleSubtitle;
}
- (void)loadContent:(nonnull UIKitDemoFontNameRowContent *)rowContent
{
    NSString *text = nil;
    NSString *detailText = nil;
    UIFont *textFont = nil;
    if ([rowContent isKindOfClass:[UIKitDemoFontNameRowContent class]])
    {
        text = rowContent.text;
        detailText = rowContent.detailText;
        textFont = rowContent.textFont;
    }
    self.textLabel.text = text;
    self.detailTextLabel.text = detailText;
    self.textLabel.font = textFont;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end




@implementation UIKitDemoFontNameRowContent
- (nullable instancetype)initWithText:(nullable NSString *)text
                                value:(nullable id)value
                            cellClass:(nullable Class)cellClass
                           detailText:(nullable NSString *)detailText
                             textFont:(nullable UIFont *)textFont
{
    self = [super initWithText:text
                         value:value
                     cellClass:cellClass];
    if (self == nil) {return nil;}
    _detailText = [detailText description];
    _textFont = textFont;
    CGSize textSize = [TextSizeExtend sizeWithMaximumSize:CGSizeMake(1000, 1000)
                                                     text:text
                                                     font:textFont];
    _textHeight = textSize.height;
    return self;
}
@end
