//
//  HomeModel.m
//  SpreadCellDemo
//
//  Created by lijinshi on 2018/3/20.
//  Copyright © 2018年 lijinshi. All rights reserved.
//

#import "HomeModel.h"

@implementation HomeModel

- (void)setTitle:(NSString *)title
{
    _title = title;
    
    CGFloat w = [UIScreen mainScreen].bounds.size.width - 24;
    CGFloat h = MAXFLOAT;
    NSDictionary *dict = @{NSFontAttributeName: [UIFont systemFontOfSize:16]};
    CGFloat height = [title boundingRectWithSize:CGSizeMake(w, h) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.height;
    _cellHeight = height + 24;
}

@end
