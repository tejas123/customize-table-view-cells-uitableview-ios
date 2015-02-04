//
//  MoviesTableViewCell.m
//  CustomizingTableViewCell
//
//  Created by abc on 28/01/15.
//  Copyright (c) 2015 com.ms. All rights reserved.
//

#import "MoviesTableViewCell.h"

@implementation MoviesTableViewCell
@synthesize lblYear,lblTitle,imgPoster;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
