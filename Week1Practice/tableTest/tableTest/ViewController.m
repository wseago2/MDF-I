//
//  ViewController.m
//  tableTest
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
    stringArray = [[NSArray alloc] initWithObjects:@"Hello", @"Goodbye", @"Mickey", @"Minnie", @"Donald", @"Goofy", @"Happy", @"Sleepy", @"Sneezy", @"MisterToad", @"MegaMan", nil];
    
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
    // make it return the number of cells = the number of array items
    return [stringArray count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    
    return cell;

}

@end
