//
//  FirstViewController.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyMapAnnotation.h"

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    
    IBOutlet UITableView *siteTableView;
    IBOutlet UIButton *edit;
    //IBOutlet UIButton *doneButton;
    
    MyMapAnnotation *title;
    MyMapAnnotation *coord;
    
}

-(IBAction)onClick:(id)sender;

@property CLLocationCoordinate2D *coordinates;
@property UIButton *edit;

@end
