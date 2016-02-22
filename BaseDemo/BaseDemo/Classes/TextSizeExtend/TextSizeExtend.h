//
//  TextSizeExtend.h
//  BaseDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextSizeExtend : NSObject
+ (CGSize)sizeWithMaximumSize:(CGSize)maximumSize text:(NSString *)text font:(UIFont *)font;
@end
