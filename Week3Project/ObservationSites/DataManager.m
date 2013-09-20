//
//  DataManager.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

@synthesize sites;

static DataManager* _sharedDataManager = nil;

+(DataManager*)sharedDataManager
{
    if (!_sharedDataManager)
    {
        _sharedDataManager = [[self alloc] init];
    }
    return _sharedDataManager;
}

-(id) init
{
    if ((self = [super init]))
    {
        sites = [[NSMutableArray alloc] init];
        NSLog(@"sites array was created.");
    }
    return self;
}

@end
