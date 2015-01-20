//
//  DreamStatusDetailFrame.m
//  黑马微博
//
//  Created by apple on 14-7-14.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "DreamStatusDetailFrame.h"
#import "DreamStatus.h"
#import "DreamStatusOriginalFrame.h"
#import "DreamStatusRetweetedFrame.h"

@implementation DreamStatusDetailFrame

- (void)setStatus:(DreamStatus *)status
{
    _status = status;
    
    // 1.计算原创微博的frame
    DreamStatusOriginalFrame *originalFrame = [[DreamStatusOriginalFrame alloc] init];
    originalFrame.status = status;
    self.originalFrame = originalFrame;
    
    // 2.计算转发微博的frame
    CGFloat h = 0;
    if (status.retweeted_status) {
        DreamStatusRetweetedFrame *retweetedFrame = [[DreamStatusRetweetedFrame alloc] init];
        retweetedFrame.retweetedStatus = status.retweeted_status;
        
        // 计算转发微博frame的y值
        CGRect f = retweetedFrame.frame;
        f.origin.y = CGRectGetMaxY(originalFrame.frame);
        retweetedFrame.frame = f;
        
        self.retweetedFrame = retweetedFrame;
        
        h = CGRectGetMaxY(retweetedFrame.frame);
    } else {
        h = CGRectGetMaxY(originalFrame.frame);
    }
    
    // 自己的frame
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    self.frame = CGRectMake(x, y, w, h);
}

@end
