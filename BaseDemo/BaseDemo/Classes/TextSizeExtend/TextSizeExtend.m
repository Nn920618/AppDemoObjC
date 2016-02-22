//
//  TextSizeExtend.m
//  BaseDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "TextSizeExtend.h"

@implementation TextSizeExtend
+ (CGSize)sizeWithMaximumSize:(CGSize)maximumSize text:(NSString *)text font:(UIFont *)font
{
    NSStringDrawingOptions options = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect textBound = [text boundingRectWithSize:maximumSize
                                          options:options
                                       attributes:attributes
                                          context:nil];
    return textBound.size;
}
@end
