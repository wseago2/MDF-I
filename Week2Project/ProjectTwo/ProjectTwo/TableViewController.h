//
//  TableViewController.h
//  ProjectTwo
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController
{
    IBOutlet UILabel *detailName;
    IBOutlet UILabel *bookName;
    IBOutlet UILabel *authorName;
    IBOutlet UILabel *location;
    
    IBOutlet UITextView *info;
}

-(IBAction)onBack:(id)sender;

@property (nonatomic) UILabel *detailName;
@property (nonatomic) UILabel *bookName;
@property (nonatomic) UILabel *authorName;
@property (nonatomic) UILabel *location;

@property (nonatomic) UITextView *info;

@end
