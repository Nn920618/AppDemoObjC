//
//  ViewController.m
//  AppDemoObjC
//
//  Created by Nn on 16/2/17.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "ViewController.h"

#import <BaseDemo/BaseDemo.h>
#import <UIKitDemo/UIKitDemo.h>

@interface ViewController () <UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) BaseDemoTableViewContent *tableContent;
@property (nonatomic, strong) BaseDemoTableViewExtend *tableViewExtend;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTableContent];
    [self loadTableView];
}
- (void)loadTableContent
{
    BaseDemoTableViewContent *tableContent = [[BaseDemoTableViewContent alloc] init];
    NSArray *frameworksContent =
    @[
      @{BaseDemoCellTextKey: @"UIKit", BaseDemoCellValueKey: [UIKitDemo class]}
      ];
    NSArray *librariesContent = @[];
    [tableContent addSectionWithHeader:@"Frameworks"
                                footer:nil
                                  rows:frameworksContent];
    [tableContent addSectionWithHeader:@"Libraries"
                                footer:nil
                                  rows:librariesContent];
    self.tableContent = tableContent;
}
- (void)loadTableView
{
    BaseDemoTableViewExtend *tableViewExtend = [[BaseDemoTableViewExtend alloc] init];
    [tableViewExtend registerTableView:self.tableView
                           withContent:self.tableContent];
    self.tableViewExtend = tableViewExtend;
}
#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *viewController = nil;
    Class cls = [self.tableContent valueAtIndexPath:indexPath];
    if ([cls isSubclassOfClass:[BaseDemo class]])
    {
        viewController = [cls startViewController];
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
