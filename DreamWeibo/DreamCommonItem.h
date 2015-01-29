//
//  DreamCommonItem.h
//  黑马微博
//
//  Created by apple on 14-7-21.
//  Copyright (c) 2014年 heima. All rights reserved.
//  用一个DreamCommonItem模型来描述每行的信息：图标、标题、子标题、右边的样式（箭头、文字、数字、开关、打钩）

#import <Foundation/Foundation.h>

@interface DreamCommonItem : NSObject
/** 图标 */
@property (nonatomic, copy) NSString *icon;
/** 标题 */
@property (nonatomic, copy) NSString *title;
/** 子标题 */
@property (nonatomic, copy) NSString *subtitle;

+ (instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon;
+ (instancetype)itemWithTitle:(NSString *)title;
@end