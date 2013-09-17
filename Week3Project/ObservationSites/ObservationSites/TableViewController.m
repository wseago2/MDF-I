//
//  TableViewController.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

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
    span.latitudeDelta = 1.0f;
    span.longitudeDelta = 1.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 28.55f;
    location.longitude = -81.33f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    
    mapView.region = region;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
