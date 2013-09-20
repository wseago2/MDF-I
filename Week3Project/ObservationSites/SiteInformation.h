//
//  SiteInformation.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SiteInformation : NSObject
{
    NSString *locationName;
    CLLocationCoordinate2D actualLocation;
}

-(id)initWithTitle:(NSString*)name loc:(CLLocationCoordinate2D)loc;

@property (nonatomic, strong) NSString *locationName;
@property (nonatomic, assign) CLLocationCoordinate2D actualLocation;

@end
