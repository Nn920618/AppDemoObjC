//
//  UIKitDemoViewController_FontName.m
//  UIKitDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemoViewController_FontName.h"
#import "UIKitDemoFontNameCell.h"

@interface UIKitDemoViewController_FontName () <UITableViewDelegate>
@property (nonatomic, strong) BaseDemoTableViewContent *tableContent;
@property (nonatomic, strong) BaseDemoTableViewExtend *tableViewExtend;
@end

@implementation UIKitDemoViewController_FontName

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTitle];
    [self loadContent];
    [self loadTableView];
}
- (void)loadTitle
{
    self.title = @"FontName";
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)loadContent
{
    BaseDemoTableViewContent *tableContent = [[BaseDemoTableViewContent alloc] init];
    self.tableContent = tableContent;
    NSString *text = @"abc&ABC123!";
    Class cellClass = [UIKitDemoFontNameCell class];
    for (NSString *familyName in [UIFont familyNames])
    {
        BaseDemoTableSectionContent *sectionContent = [[BaseDemoTableSectionContent alloc] initWithHeader:familyName
                                                                                                   footer:nil];
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName])
        {
            UIFont *font = [UIFont fontWithName:fontName size:17];
            BaseDemoTableRowContent *rowContent = [[UIKitDemoFontNameRowContent alloc] initWithText:text
                                                                                              value:fontName
                                                                                          cellClass:cellClass
                                                                                         detailText:fontName
                                                                                           textFont:font];
            [sectionContent addRowContent:rowContent];
        }
        [tableContent addSectionContent:sectionContent];
    }
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

#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIKitDemoFontNameRowContent *rowContent = [self.tableContent contentAtIndexPath:indexPath];
    return rowContent.textHeight + 26;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([self.delegate respondsToSelector:@selector(fontNameViewController:selectedFontName:)])
    {
        UIKitDemoFontNameRowContent *rowContent = [self.tableContent contentAtIndexPath:indexPath];
        NSString *fontName = rowContent.value;
        [self.delegate fontNameViewController:self
                             selectedFontName:fontName];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
