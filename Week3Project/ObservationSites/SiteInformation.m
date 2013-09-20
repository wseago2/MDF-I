//
//  SiteInformation.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SiteInformation.h"

@implementation SiteInformation

@synthesize locationName, actualLocation;

-(id)initWithTitle:(NSString*)name loc:(CLLocationCoordinate2D)loc
{
    if ((self = [super init]))
    {
        locationName = name;
        actualLocation = loc;
    }
    
    return self;
    
}

@end
