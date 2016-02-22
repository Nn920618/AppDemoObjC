//
//  BaseDemoTableViewExtend.h
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseDemoTableViewCell;
@class BaseDemoTableViewContent;

@interface BaseDemoTableViewExtend : NSObject<UITableViewDataSource>
+ (nonnull UITableViewCell *)dequeueReusableCellInTableView:(nonnull UITableView *)tableView
                                                atIndexPath:(nonnull NSIndexPath *)indexPath
                                                    content:(nonnull BaseDemoTableViewContent *)content;
+ (NSInteger)numberOfSectionsInTableView:(nonnull UITableView *)tableView
                                 content:(nonnull BaseDemoTableViewContent *)content;
+ (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
               content:(nonnull BaseDemoTableViewContent *)content;
+ (nullable NSString *)tableView:(nonnull UITableView *)tableView
         titleForHeaderInSection:(NSInteger)section
                         content:(nonnull BaseDemoTableViewContent *)content;
+ (nullable NSString *)tableView:(nonnull UITableView *)tableView
         titleForFooterInSection:(NSInteger)section
                         content:(nonnull BaseDemoTableViewContent *)content;


@property (readonly, nonatomic, strong, nullable) UITableView *tableView;
@property (readonly, nonatomic, strong, nullable) BaseDemoTableViewContent *tableContent;
- (void)registerTableView:(nonnull UITableView *)tableView
              withContent:(nonnull BaseDemoTableViewContent *)content;
@end



