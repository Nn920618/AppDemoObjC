//
//  BaseDemoTableViewContent.h
//  BaseDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXTERN NSString *const _Nonnull BaseDemoCellTextKey;
FOUNDATION_EXTERN NSString *const _Nonnull BaseDemoCellValueKey;


@interface BaseDemoTableRowContent : NSObject
@property (nonatomic, readonly, strong, nullable) NSString *text;
@property (nonatomic, readonly, strong, nullable) NSString *value;
@property (nonatomic, readonly, strong, nullable) Class cellClass;
- (nullable instancetype)initWithInfo:(nonnull NSDictionary<NSString *, id> *)info;
- (nullable instancetype)initWithText:(nullable NSString *)text
                                value:(nullable id)value
                            cellClass:(nullable Class)cellClass;
@end

@interface BaseDemoTableSectionContent : NSObject
@property (nonatomic, strong, nonnull) NSString *headerTitle;
@property (nonatomic, strong, nonnull) NSString *footerTitle;
- (nullable instancetype)initWithHeader:(nullable NSString *)headerTitle
                        footer:(nullable NSString *)footerTitle;
- (void)addRowContent:(nullable BaseDemoTableRowContent *)rowContent;
- (nullable BaseDemoTableRowContent *)contentInRow:(NSInteger)row;
- (NSInteger)count;
@end

@interface BaseDemoTableViewContent : NSObject
- (void)addSectionWithHeader:(nullable NSString *)headerTitle
                      footer:(nullable NSString *)footerTitle
                        rows:(nonnull NSArray<NSDictionary<NSString *, id> *> *)rows;
- (void)addSectionContent:(nonnull BaseDemoTableSectionContent *)sectionContent;
- (nullable id)valueAtIndexPath:(nonnull NSIndexPath *)indexPath;
- (nullable __kindof BaseDemoTableSectionContent *)contentInSection:(NSInteger)section;
- (nullable __kindof BaseDemoTableRowContent *)contentAtIndexPath:(nonnull NSIndexPath *)indexPath;
- (NSInteger)count;
@end
