//
//  FirstViewController.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "FirstViewController.h"
#import "TableViewController.h"
#import "DataManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize edit;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"home1"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    // set initial button text
    [edit setTitle:@"Edit" forState:UIControlStateNormal];
    
    // setup lat/long
    CLLocationCoordinate2D prariePreserve;
    prariePreserve.latitude = 27.5825f;
    prariePreserve.longitude = -81.0437f;
    
    
    CLLocationCoordinate2D shiredIsland;
    shiredIsland.latitude = 29.3988f;
    shiredIsland.longitude = -83.2055f;
    
    CLLocationCoordinate2D panacea;
    panacea.latitude = 29.9911f;
    panacea.longitude = -84.4225f;
    
    CLLocationCoordinate2D keatonBeach;
    keatonBeach.latitude = 29.824f;
    keatonBeach.longitude = -83.595f;
    
    CLLocationCoordinate2D indianPass;
    indianPass.latitude = 29.6765f;
    indianPass.longitude = -85.2414f;
    
    CLLocationCoordinate2D dryTortugas;
    dryTortugas.latitude = 24.6285f;
    dryTortugas.longitude = -82.8731f;
    
    CLLocationCoordinate2D avonPark;
    avonPark.latitude = 27.5833f;
    avonPark.longitude = -81.1667f;
    
    CLLocationCoordinate2D campKolomoki;
    campKolomoki.latitude = 30.7866f;
    campKolomoki.longitude = -86.2673f;
    
    CLLocationCoordinate2D cedarKey;
    cedarKey.latitude = 29.16f;
    cedarKey.longitude = -83.04f;
    
    CLLocationCoordinate2D chiefland;
    chiefland.latitude = 29.4066f;
    chiefland.longitude = -82.8592f;
    
    // setup annotations
    MyMapAnnotation *site1 = [[MyMapAnnotation alloc] initWithTitle:@"Prarie Preserve Site" coord:prariePreserve];
    MyMapAnnotation *site2 = [[MyMapAnnotation alloc] initWithTitle:@"Shired Island Site" coord:shiredIsland];
    MyMapAnnotation *site3 = [[MyMapAnnotation alloc] initWithTitle:@"Panacea Site" coord:panacea];
    MyMapAnnotation *site4 = [[MyMapAnnotation alloc] initWithTitle:@"Keaton Beach Site" coord:keatonBeach];
    MyMapAnnotation *site5 = [[MyMapAnnotation alloc] initWithTitle:@"Indian Pass Site" coord:indianPass];
    MyMapAnnotation *site6 = [[MyMapAnnotation alloc] initWithTitle:@"Dry Tortugas Site" coord:dryTortugas];
    MyMapAnnotation *site7 = [[MyMapAnnotation alloc] initWithTitle:@"Avon Park Site" coord:avonPark];
    MyMapAnnotation *site8 = [[MyMapAnnotation alloc] initWithTitle:@"Camp Kolomoki Site" coord:campKolomoki];
    MyMapAnnotation *site9 = [[MyMapAnnotation alloc] initWithTitle:@"Cedar Key Site" coord:cedarKey];
    MyMapAnnotation *site10 = [[MyMapAnnotation alloc] initWithTitle:@"Chiefland Site" coord:chiefland];
   
    

// make sure singleton is created
    DataManager *manager = [DataManager sharedDataManager];
    NSLog(@"data = %i", manager.sites.count);
    
    if (manager != nil)
    {
        NSMutableArray *sites = manager.sites;
        
        // populate array
        if (sites != nil)
        {
            [sites addObject:site1];
            [sites addObject:site2];
            [sites addObject:site3];
            [sites addObject:site4];
            [sites addObject:site5];
            [sites addObject:site6];
            [sites addObject:site7];
            [sites addObject:site8];
            [sites addObject:site9];
            [sites addObject:site10];
           
            NSLog(@"data = %i", manager.sites.count);
        }
    }
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// get array size
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *newArray = dataManager.sites;
    return [newArray count];
}

// handle cells
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:18];
    }
    
    // set text on cells
    DataManager *dataManager = [DataManager sharedDataManager];
    
    NSMutableArray *textArray = dataManager.sites;
    
    cell.textLabel.text = [[textArray objectAtIndex:indexPath.row]title];
    
    return cell;
}

// handle row selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // handle TableViewController
    TableViewController *locationView = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *selectArray = dataManager.sites;
   
    if (locationView != nil)
    {
        SiteInformation *info = [[DataManager sharedDataManager].sites objectAtIndex:indexPath.row];
        
        locationView.nameOfSite = [[selectArray objectAtIndex:indexPath.row]title];
        locationView.siteLocation = [[selectArray objectAtIndex:indexPath.row]coordinate];
        
        [self presentViewController:locationView animated:true completion:nil];
        
        locationView.siteInfo = info;
        
    }
    
}

// set editing mode
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

// set edit button method
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // delete mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // remove object from array and tableView
        NSLog(@"Deleting row %d from array.", indexPath.row);
        
        DataManager *dataManager = [DataManager sharedDataManager];
        NSMutableArray *editArray = dataManager.sites;
        [editArray removeObjectAtIndex:indexPath.row];
        [siteTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath]  withRowAnimation:true];
        
    }
}

// handle button label and edit state
- (IBAction)onClick:(id)sender
{
    NSString *editTitle = edit.titleLabel.text;
    if ([editTitle isEqualToString:@"Edit"])
    {
        [edit setTitle:@"Done" forState:UIControlStateNormal];
        [siteTableView setEditing:true];
    }
    else if ([editTitle isEqualToString:@"Done"])
    {
        [edit setTitle:@"Edit" forState:UIControlStateNormal];
        [siteTableView setEditing:false];
    }
}

@end
