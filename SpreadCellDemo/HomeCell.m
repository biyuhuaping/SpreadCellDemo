//
//  HomeCell.m
//  SpreadCellDemo
//
//  Created by lijinshi on 2018/3/20.
//  Copyright © 2018年 lijinshi. All rights reserved.
//

#import "HomeCell.h"
#import "Masonry.h"

@interface HomeCell()

@property (nonatomic, strong) UILabel *contentL;

@end

@implementation HomeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.clipsToBounds = YES;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self layout];
    }
    return self;
}

- (void)layout
{
    [self.contentL mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(-12);
        make.left.top.mas_equalTo(12);
        make.right.mas_equalTo(-12);
    }];
}

- (UILabel *)contentL
{
    if (!_contentL) {
        _contentL = [[UILabel alloc] init];
        _contentL.frame = CGRectMake(0, 0, self.contentView.bounds.size.width, 0);
        _contentL.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentL.numberOfLines = 4;
        [self.contentView addSubview:_contentL];
    }
    return _contentL;
}

- (void)setModel:(HomeModel *)model
{
    _model = model;
    self.contentL.text = model.title;
    if (model.isOpen) {
        self.contentL.numberOfLines = NSIntegerMax;
    } else {
        self.contentL.numberOfLines = 4;
    }
}

@end

