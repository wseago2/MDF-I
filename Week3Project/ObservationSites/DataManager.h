//
//  DataManager.h
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSMutableArray *sites;
}

+(DataManager*)sharedDataManager;

@property (nonatomic, strong)NSMutableArray *sites;

@end
