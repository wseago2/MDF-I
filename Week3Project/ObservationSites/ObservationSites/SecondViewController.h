//
//  SecondViewController.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyMapAnnotation.h"

@interface SecondViewController : UIViewController
{
    IBOutlet MKMapView *largeMap;
    
    NSString *locations;
}

@property (nonatomic, strong) IBOutlet MKMapView *largeMap;
@property (nonatomic, strong) NSString *locations;

@end
