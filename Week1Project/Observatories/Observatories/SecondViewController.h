//
//  SecondViewController.h
//  Observatories
//
//  Created by Wesley Seago on 9/5/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UILabel *detailName;
    IBOutlet UILabel *detailLocation;
    IBOutlet UILabel *detailInfo;
    IBOutlet UIImageView *detailImage;
}

- (IBAction)onClose:(id)sender;

@property (nonatomic) UILabel *detailName;
@property (nonatomic) UILabel *detailLocation;
@property (nonatomic) UILabel *detailInfo;
@property (nonatomic) UIImageView *detailImage;

@end
