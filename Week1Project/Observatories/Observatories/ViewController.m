//
//  ViewController.m
//  Observatories
//
//  Created by Wesley Seago on 9/3/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Big Bear", @"Frank P. Brackett", @"Robert Ferguson", @"Foothill College", @"Starfield", @"Rattlesnake Mountain", @"Highland Rose Park", @"Haggert", @"Kitt Peak", @"Stamford", @"Van Vleck", @"Olin", @"Rolnick", @"Bowman", @"Koeble", @"Leander McCormick", @"Stokesville", @"Mauna Kea", @"Canada-France-Hawaii", @"Three College", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stringArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    // check to see if cell exists
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        // create cell if it does not exist
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
