//
//  TableViewController.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface TableViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
}

-(IBAction)onClick:(id)sender;

@end
