//
//  TableViewController.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "TableViewController.h"
#import "MyMapAnnotation.h"
#import <MapKit/MapKit.h>

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize latitude;
@synthesize longitude;
@synthesize siteLocation;
@synthesize siteName;
@synthesize siteLabel;
@synthesize siteInfo;
@synthesize nameOfSite;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    // create default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 4.0f;
    span.longitudeDelta = 4.0f;
    
    MKCoordinateRegion region;
    region.center = siteLocation;
    region.span = span;
    mapView1.region = region;
    
    siteLabel.text = [NSString stringWithFormat:@"%@", nameOfSite];
    latText.text = [NSString stringWithFormat:@"Latitude %f", siteLocation.latitude];
    longText.text = [NSString stringWithFormat:@"Longitude %f", siteLocation.longitude];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    MyMapAnnotation *mapAnnotations = [[MyMapAnnotation alloc] initWithTitle:nameOfSite coord:siteLocation];
    if (mapAnnotations != nil)
    {
        [mapView1 addAnnotation:mapAnnotations];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if (button != nil)
    {
        
    [self dismissViewControllerAnimated:true completion:nil];
        
    }
}

@end
