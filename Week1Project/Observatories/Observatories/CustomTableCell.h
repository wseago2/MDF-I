//
//  CustomTableCell.h
//  Observatories
//
//  Created by Wesley Seago on 9/3/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell 
{
    IBOutlet UIImageView *obsImage;
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *locLabel;

}

@property (nonatomic, strong)UIImageView *obsImage;
@property (nonatomic, strong)UILabel *titleLabel;
@property (nonatomic, strong)UILabel *locLabel;

@end
