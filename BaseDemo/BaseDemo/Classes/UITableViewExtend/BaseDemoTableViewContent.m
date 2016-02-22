//
//  BaseDemoTableViewContent.m
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "BaseDemoTableViewContent.h"

NSString *const BaseDemoCellTextKey = @"BaseDemoCellTextKey";
NSString *const BaseDemoCellValueKey = @"BaseDemoCellValueKey";

@interface BaseDemoTableRowContent ()

@end
@interface BaseDemoTableSectionContent ()
@property (nonatomic, strong, nonnull) NSMutableArray<BaseDemoTableRowContent *> *rows;
@end
@interface BaseDemoTableViewContent ()
@property (nonatomic, strong, nonnull) NSMutableArray<BaseDemoTableSectionContent *> *sections;

@end

@implementation BaseDemoTableRowContent
- (nullable instancetype)initWithText:(nullable NSString *)text
                                value:(nullable id)value
                            cellClass:(nullable Class)cellClass
{
    self = [super init];
    if (self == nil) {return nil;}
    _text = [text description];
    _value = value;
    _cellClass = cellClass;
    return self;
}
- (nullable instancetype)initWithInfo:(nonnull NSDictionary<NSString *, id> *)info
{
    NSString *text = info[BaseDemoCellTextKey];
    id value = info[BaseDemoCellValueKey];
    self = [self initWithText:text value:value cellClass:Nil];
    return self;
}
- (nullable instancetype)init
{
    return [self initWithText:nil value:nil cellClass:Nil];
}
@end

@implementation BaseDemoTableSectionContent
- (nullable instancetype)initWithHeader:(nullable NSString *)headerTitle
                        footer:(nullable NSString *)footerTitle
{
    self = [super init];
    if (self == nil) {return nil;}
    _rows = [[NSMutableArray alloc] init];
    _headerTitle = headerTitle;
    _footerTitle = footerTitle;
    return self;
}
- (nullable instancetype)init
{
    return [self initWithHeader:nil footer:nil];
}
- (void)addRowContent:(nullable BaseDemoTableRowContent *)rowContent
{
    if ([rowContent isKindOfClass:[BaseDemoTableRowContent class]])
    {
        [self.rows addObject:rowContent];
    }
}
- (nullable BaseDemoTableRowContent *)contentInRow:(NSInteger)row
{
    BaseDemoTableRowContent *result = nil;
    if (row >= 0 && row < self.rows.count)
    {
        result = self.rows[row];
    }
    return result;
}
- (NSInteger)count
{
    return self.rows.count;
}
@end

@implementation BaseDemoTableViewContent
- (instancetype)init
{
    self = [super init];
    if (self == nil) {return nil;}
    _sections = [[NSMutableArray alloc] init];
    return self;
}
- (NSInteger)count
{
    return self.sections.count;
}
- (void)addSectionWithHeader:(nullable NSString *)headerTitle
                      footer:(nullable NSString *)footerTitle
                        rows:(nonnull NSArray<NSDictionary<NSString *, id> *> *)rows
{
    BaseDemoTableSectionContent *section = [[BaseDemoTableSectionContent alloc] initWithHeader:headerTitle
                                                                                        footer:footerTitle];
    for (NSDictionary<NSString *, id> *rowInfo in rows)
    {
        BaseDemoTableRowContent *rowContent = [[BaseDemoTableRowContent alloc] initWithInfo:rowInfo];
        [section addRowContent:rowContent];
    }
    [self.sections addObject:section];
}
- (void)addSectionContent:(nonnull BaseDemoTableSectionContent *)sectionContent
{
    if ([sectionContent isKindOfClass:[BaseDemoTableSectionContent class]])
    {
        [self.sections addObject:sectionContent];
    }
}
- (nullable __kindof BaseDemoTableSectionContent *)contentInSection:(NSInteger)section
{
    BaseDemoTableSectionContent *result = nil;
    if (section >= 0 && section < self.sections.count)
    {
        result = self.sections[section];
    }
    return result;
}
- (nullable __kindof BaseDemoTableRowContent *)contentAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSInteger sectionIndex = indexPath.section;
    NSInteger rowIndex = indexPath.row;
    BaseDemoTableSectionContent *section = [self contentInSection:sectionIndex];
    BaseDemoTableRowContent *row = [section contentInRow:rowIndex];
    return row;
}
- (nullable id)valueAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    BaseDemoTableRowContent *row = [self contentAtIndexPath:indexPath];
    return row.value;
}
@end
