//
//  BaseDemoMainViewController.m
//  UIKitDemo
//
//  Created by Nn on 16/2/17.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemoMainViewController.h"

@interface UIKitDemoMainViewController () <UITableViewDelegate>
@property (nonatomic, strong) BaseDemoTableViewContent *tableContent;
@property (nonatomic, strong) BaseDemoTableViewExtend *tableViewExtend;
@end

@implementation UIKitDemoMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTitle];
    [self loadTableContent];
    [self loadTableView];
}
- (void)loadTitle
{
    self.title = @"UIKit";
}
- (void)loadTableView
{
    UITableView *tableView = [BaseDemoLayoutExtend loadBaseDemoTableViewInViewController:self];
    tableView.delegate = self;
    BaseDemoTableViewExtend *tableViewExtend = [[BaseDemoTableViewExtend alloc] init];
    [tableViewExtend registerTableView:tableView
                           withContent:self.tableContent];
    self.tableViewExtend = tableViewExtend;
}
- (void)loadTableContent
{
    NSArray *sectionContent =
    @[
      @{BaseDemoCellTextKey: @"UIView", BaseDemoCellValueKey: [UIKitDemoViewController_UIView class]},
      @{BaseDemoCellTextKey: @"UILabel", BaseDemoCellValueKey: [UIKitDemoViewController_UILabel class]}
      ];
    BaseDemoTableViewContent *tableContent = [[BaseDemoTableViewContent alloc] init];
    [tableContent addSectionWithHeader:nil
                                footer:nil
                                  rows:sectionContent];
    self.tableContent = tableContent;
}
#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class cls = [self.tableContent valueAtIndexPath:indexPath];
    UIViewController *viewController = nil;
    if ([cls isSubclassOfClass:[UIViewController class]])
    {
        viewController = [[cls alloc] init];
    }
    if (viewController)
    {
        [self.navigationController showViewController:viewController
                                               sender:self];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
