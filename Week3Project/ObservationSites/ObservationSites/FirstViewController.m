//
//  FirstViewController.m
//  ObservationSites
//
//  Created by Wesley Seago on 9/17/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "FirstViewController.h"
#import "TableViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize darkSites;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    self.darkSites = @[@"Prarie Preserve",
                       @"Shired Island",
                       @"Panacea",
                       @"Keaton Beach",
                       @"Indian Pass",
                       @"Dry Tortugas",
                       @"Avon Park",
                       @"Camp Kolomoki",
                       @"Cedar Key",
                       @"Chiefland Village"];
    
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
    return [darkSites count];
}

// handle cells
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // set text
    cell.textLabel.text = [darkSites objectAtIndex:indexPath.row];
    
    return cell;
}

// handle row selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.darkSites[indexPath.row];
    NSLog(@"Row %i", indexPath.row);
    NSLog(@"You selected %@", rowValue);
    
    // handle TableViewController
    TableViewController *tableSelection = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    
    // call TableViewController
    [self presentViewController:tableSelection animated:true completion:nil];
    
    // set detail text name
    
    // set site map
    
    // set site name
    
    // set site location
    
}

@end
