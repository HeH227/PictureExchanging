//
//  SidebarTableViewCell.m
//  PictureExchanging
//
//  Created by apple on 16/4/11.
//  Copyright © 2016年 RedBird. All rights reserved.
//

#import "SidebarTableViewCell.h"

@implementation SidebarTableViewCell

- (instancetype)init
{
    if (self == [super init]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
