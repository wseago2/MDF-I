//
//  SecondViewController.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SecondViewController.h"
#import <MapKit/MapKit.h>
#import "MyMapAnnotation.h"
#import "DataManager.h"
#import "SiteInformation.h"
#import "FirstViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize largeMap, locations;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"about"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    MKCoordinateSpan span;
    span.latitudeDelta = 6.0f;
    span.longitudeDelta = 6.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 28.4158f;
    location.longitude = -81.2989f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    
    largeMap.region = region;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
   
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *mapAnnotations = dataManager.sites;
    
    [largeMap removeAnnotations:largeMap.annotations];
    
    // get current data from sites array
    for (int i = 0; i < [mapAnnotations count]; i++)
    {
        MyMapAnnotation *annotations = [[MyMapAnnotation alloc] initWithTitle:[[mapAnnotations objectAtIndex:i]title] coord:[[mapAnnotations objectAtIndex:i]coordinate]];
        
        // add annotations
        if (annotations != nil)
        {
            [largeMap addAnnotation:annotations];
        }
    }
}

@end
