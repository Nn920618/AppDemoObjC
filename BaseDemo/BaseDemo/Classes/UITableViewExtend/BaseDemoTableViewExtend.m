//
//  BaseDemoTableViewExtend.m
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "BaseDemoTableViewExtend.h"

@interface BaseDemoTableViewExtend ()
@property (nonatomic, strong, nullable) UITableView *tableView;
@property (nonatomic, strong, nullable) BaseDemoTableViewContent *tableContent;
@end

@implementation BaseDemoTableViewExtend
+ (nonnull UITableViewCell *)dequeueReusableCellInTableView:(nonnull UITableView *)tableView
                                                atIndexPath:(nonnull NSIndexPath *)indexPath
                                                    content:(nonnull BaseDemoTableViewContent *)content
{
    BaseDemoTableRowContent *rowContent = [content contentAtIndexPath:indexPath];
    if (rowContent == nil)
    {
        assert("RowContent can not be nil!");
    }
    Class cellClass = [rowContent cellClass];
    if ([cellClass isSubclassOfClass:[BaseDemoTableViewCell class]] == NO)
    {
        cellClass = [BaseDemoTableViewCell class];
    }
    NSString *identifier = [cellClass identifier];
    BaseDemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        cell = [cellClass create];
    }
    [cell loadContent:rowContent];
    return cell;
}
+ (NSInteger)numberOfSectionsInTableView:(nonnull UITableView *)tableView
                                 content:(nonnull BaseDemoTableViewContent *)content
{
    return content.count;
}
+ (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
               content:(nonnull BaseDemoTableViewContent *)content
{
    BaseDemoTableSectionContent *sectionContent = [content contentInSection:section];
    return sectionContent.count;
}
+ (nullable NSString *)tableView:(nonnull UITableView *)tableView
         titleForHeaderInSection:(NSInteger)section
                         content:(nonnull BaseDemoTableViewContent *)content
{
    BaseDemoTableSectionContent *sectionContent = [content contentInSection:section];
    return sectionContent.headerTitle;
}
+ (nullable NSString *)tableView:(nonnull UITableView *)tableView
         titleForFooterInSection:(NSInteger)section
                         content:(nonnull BaseDemoTableViewContent *)content
{
    BaseDemoTableSectionContent *sectionContent = [content contentInSection:section];
    return sectionContent.footerTitle;
}

- (void)registerTableView:(nonnull UITableView *)tableView
              withContent:(nonnull BaseDemoTableViewContent *)content
{
    self.tableView.dataSource = nil;
    tableView.dataSource = self;
    self.tableView = tableView;
    self.tableContent = content;
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [BaseDemoTableViewExtend numberOfSectionsInTableView:tableView
                                                        content:self.tableContent];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [BaseDemoTableViewExtend tableView:tableView
                        numberOfRowsInSection:section
                                      content:self.tableContent];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [BaseDemoTableViewExtend dequeueReusableCellInTableView:tableView
                                                                        atIndexPath:indexPath
                                                                            content:self.tableContent];
    return cell;
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [BaseDemoTableViewExtend tableView:tableView
                      titleForHeaderInSection:section
                                      content:self.tableContent];
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [BaseDemoTableViewExtend tableView:tableView
                      titleForFooterInSection:section
                                      content:self.tableContent];
}
@end

