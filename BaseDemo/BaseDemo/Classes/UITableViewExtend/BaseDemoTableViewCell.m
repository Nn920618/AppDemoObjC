//
//  BaseDemoTableViewCell.m
//  BaseDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "BaseDemoTableViewCell.h"

@implementation BaseDemoTableViewCell
+ (nonnull NSString *)identifier
{
    return NSStringFromClass([self class]);
}
+ (UITableViewCellStyle)cellStyle
{
    return UITableViewCellStyleDefault;
}
+ (nonnull instancetype)create
{
    id result = [[self alloc] initWithStyle:[self cellStyle]
                            reuseIdentifier:[self identifier]];
    return result;
}
- (void)loadContent:(nonnull BaseDemoTableRowContent *)rowContent
{
    self.textLabel.text = rowContent.text;
}

- (void)awakeFromNib {
    // Initialization code
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
