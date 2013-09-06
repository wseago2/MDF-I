//
//  CustomTableCell.m
//  Observatories
//
//  Created by Wesley Seago on 9/3/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize titleLabel;
@synthesize locLabel;
@synthesize obsImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
