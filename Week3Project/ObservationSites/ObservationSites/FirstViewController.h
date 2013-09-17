//
//  FirstViewController.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
    IBOutlet UITableView *tourSiteTableView;
    
}

@property (copy, nonatomic) NSArray *darkSites;

@end
