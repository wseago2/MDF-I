//
//  ViewController.h
//  Observatories
//
//  Created by Wesley Seago on 9/3/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *myTableView;
    IBOutlet UIButton *edit;
    
    NSMutableArray *stringArray;
    NSMutableArray *locationsArray;
    NSMutableArray *imageArray;
    NSMutableArray *infoArray;
}

@property (nonatomic, retain) UIButton *edit;

- (IBAction)onClick:(id)sender;


@end
