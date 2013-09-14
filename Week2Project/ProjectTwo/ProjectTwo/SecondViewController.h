//
//  SecondViewController.h
//  ProjectTwo
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *ebooks;
@property (copy, nonatomic) NSArray *bookName;
@property (copy, nonatomic) NSArray *authorName;
@property (copy, nonatomic) NSArray *location;
@property (copy, nonatomic) NSArray *info;

@end
