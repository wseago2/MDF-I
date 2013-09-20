//
//  TableViewController.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "SiteInformation.h"

@interface TableViewController : UIViewController <UITextFieldDelegate, MKMapViewDelegate>
{
    
    IBOutlet MKMapView *mapView1;
    IBOutlet UILabel *siteLabel;
    IBOutlet UILabel *latText;
    IBOutlet UILabel *longText;
    
    float latitude;
    float longitude;
    
    NSString *nameOfSite;
    
}

@property float latitude;
@property float longitude;
@property (strong) NSString *siteName;
@property (copy) NSString *nameOfSite;
@property CLLocationCoordinate2D siteLocation;
@property (nonatomic, strong) UILabel *siteLabel;
@property (nonatomic, retain) SiteInformation *siteInfo;

-(IBAction)onClick:(id)sender;

@end
