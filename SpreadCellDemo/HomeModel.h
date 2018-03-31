//
//  HomeModel.h
//  SpreadCellDemo
//
//  Created by lijinshi on 2018/3/20.
//  Copyright © 2018年 lijinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HomeModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) BOOL isOpen;

@property (nonatomic, assign) CGFloat cellHeight;

@end
