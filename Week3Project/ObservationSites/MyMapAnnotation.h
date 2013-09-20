//
//  MyMapAnnotation.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyMapAnnotation : NSObject <MKAnnotation>
{
    // declare required variables (title and coordinate)
    NSString *title;
    CLLocationCoordinate2D coordinate;
}

// create method for passing in arguments
-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;

// set properties for arguments
@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
