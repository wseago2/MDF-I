//
//  ViewController.m
//  Observatories
//
//  Created by Wesley Seago on 9/3/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize edit;

- (void)viewDidLoad
{
    // set default button title
    [edit setTitle:@"Edit" forState:UIControlStateNormal];
    
    // create array for observatory names
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Big Bear", @"Frank P. Brackett", @"Robert Ferguson", @"Foothill College", @"Starfield", @"Rattlesnake Mountain", @"Highland Road Park", @"Haggart", @"Kitt Peak", @"Stamford", @"Van Vleck", @"Olin", @"Rolnick", @"Bowman", @"Koeble", @"Leander McCormick", @"Stokesville", @"Mauna Kea", @"Canada-France-Hawaii", @"Three College", nil];
    
    // create array for observatory locations
    locationsArray = [[NSMutableArray alloc] initWithObjects:@"Big Bear, CA", @"Claremont, CA", @"Glenn Ellen, CA", @"Los Altos, CA", @"Nambour, Australia", @"Richland, WA", @"Baton Rouge, LA", @"Oregon City, OR", @"Tucson, AZ", @"Stamford, CT", @"Middletown, CT", @"New London, CT",  @"Westport, CT", @"Greenwich, CT", @"Ashland, VA", @"Charlottesville, VA", @"Verona, VA", @"Hilo, HI", @"Kamuela, HI", @"Greensboro, NC", nil];
    
    // create array for table cell images
    imageArray = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"obs0.png"],
                  [UIImage imageNamed:@"obs1.png"],
                  [UIImage imageNamed:@"obs2.png"],
                  [UIImage imageNamed:@"obs3.png"],
                  [UIImage imageNamed:@"obs4.png"],
                  [UIImage imageNamed:@"obs5.png"],
                  [UIImage imageNamed:@"obs6.png"],
                  [UIImage imageNamed:@"obs7.png"],
                  [UIImage imageNamed:@"obs8.png"],
                  [UIImage imageNamed:@"obs9.png"],
                  [UIImage imageNamed:@"obs10.png"],
                  [UIImage imageNamed:@"obs11.png"],
                  [UIImage imageNamed:@"obs12.png"],
                  [UIImage imageNamed:@"obs13.png"],
                  [UIImage imageNamed:@"obs14.png"],
                  [UIImage imageNamed:@"obs15.png"],
                  [UIImage imageNamed:@"obs16.png"],
                  [UIImage imageNamed:@"obs17.png"],
                  [UIImage imageNamed:@"obs18.png"],
                  [UIImage imageNamed:@"obs19.png"],
                    nil];
    
    // create array for info text
    infoArray = [[NSMutableArray alloc] initWithObjects:
                @"Big Bear Solar Observatory houses solar telescopes and instruments designed to study the sun.",
                @"Frank P. Brackett Observatory is located on the campus of Pomona College.",
                @"Robert Ferguson Observatory is a public facility staffed by volunteers.",
                @"Foothill College Observatory is operated by the Peninsula Astronomical Society.",
                @"Starfield Observatory was founded in 2002 by John Henley, a former teacher.",
                @"Rattlesnake Mountain Observatory is the largest, most powerful, optical research-grade telescope in Washington State.",
                @"Highland Road Park Observatory is funded and maintained by LSU.",
                @"Haggart Observatory is an astronomical observatory found at the John Inskeep Environmental Learning Center of Clackamas Community College.",
                @"Kitt Peak National Observatory houses the world’s largest collection of optical telescopes.",
                @"The Stamford Observatory is a research facility used by members of the Fairfield County Astronomical Society.",
                @"Van Vleck Observatory houses a research library holding past and present volumes of most of the major astronomical journals and catalogs.",
                @"Olin Observatory is owned and operated by Connecticut College. It is part of the F.W. Olin Science Center. The observatory hosts public stargazing events, and is also used for undergraduate instruction.",
                @"Rolnick Observatory houses a 12.5″ Newtonian telescope and the lawn regularly hosts the newly upgraded and HUGE 25″ Obsession telescope, the largest in Connecticut available to the public.",
                @"Bowman Observatory is an astronomical observatory owned and operated by the Greenwich, Connecticut Board of Education.",
                @"Keeble Observatory is an astronomical observatory owned and operated by Randolph-Macon College.",
                @"The Leander McCormick Observatory is one of the astronomical observatories operated by the Department of Astronomy of the University of Virginia.",
                @"Stokesville Observatory is an astronomical observatory owned by H. D. Riddleberger.",
                @"The Mauna Kea Observatories are an independent collection of astronomical research facilities located on the summit of Mauna Kea on the Big Island of Hawaii.",
                @"The CFH observatory hosts a world-class, 3.6 meter optical/infrared telescope. The observatory is located atop the summit of Mauna Kea, a 4200 meter, dormant volcano located on the island of Hawaii.",
                @"The Three College Observatory, located at a dark-sky location in central North Carolina, contains a 0.81-meter reflecting telescope, one of the largest in the southeastern United States.",
                 nil];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// get array count
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stringArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    // create custom table cell
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        // create cell if it does not exist
         cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if ([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
                
                // set images
                cell.obsImage.image = [imageArray objectAtIndex:indexPath.row];
                
                // set text elements on labels
                cell.titleLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
                cell.locLabel.text = (NSString*)[locationsArray objectAtIndex:indexPath.row];
                
            }
        }
    }
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row = %d name = %@", indexPath.row, [stringArray objectAtIndex:indexPath.row]);
    
    
    
    // handle SecondViewController here
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    // call secondView
    [self presentViewController:secondView animated:true completion:nil];
    
    // set the detailName field
    secondView.detailName.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    
    // set detailLocation field
    secondView.detailLocation.text = (NSString*)[locationsArray objectAtIndex:indexPath.row];
    
    // set detailImage
    secondView.detailImage.image = [imageArray objectAtIndex:indexPath.row];
    
    // set detailInfo
    secondView.detailInfo.text = (NSString*)[infoArray objectAtIndex:indexPath.row];
    
    
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // delete mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // remove object from stringArray
        [stringArray removeObjectAtIndex:indexPath.row];
        
        // remove object from locationsArray
        [locationsArray removeObjectAtIndex:indexPath.row];
        
        // remove image from imageArray
        [imageArray removeObjectAtIndex:indexPath.row];
        
        // remove object from tableView
        [self->myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
        
        // remove object from infoArray
        [infoArray removeObjectAtIndex:indexPath.row];
    }
}

// button handler use mobiletuts alertView tutorial for control with single button
- (IBAction)onClick:(id)sender
{
    NSString *title = edit.titleLabel.text;
    if ([title isEqualToString:@"Edit"])
    {
        [edit setTitle:@"Done" forState:UIControlStateNormal];
        [myTableView setEditing:true];
    }
    else if ([title isEqualToString:@"Done"])
    {
        [edit setTitle:@"Edit" forState:UIControlStateNormal];
        [myTableView setEditing:false];
    }
}

@end
