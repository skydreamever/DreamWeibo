//
//  UIImage+UIImageExtras.h
//  DreamWeibo
//
//  Created by 孙龙霄 on 2/6/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageExtras)
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
+ (instancetype)circleImageWithImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end
