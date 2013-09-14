//
//  SecondViewController.m
//  ProjectTwo
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SecondViewController.h"
#import "TableViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize ebooks, bookName, authorName, location, info;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"eBooks", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"ebook"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create ebooks array
    self.ebooks = @[@"Cocos2d for iPhone", @"Panda 3D Game Engine", @"Unity Game Development", @"Unity 3D Development", @"Mathematics for 3D Games"];
    
    // create bookName array
    self.bookName = @[@"Cocos2d for iPhone Beginner's Guide",
                      @"Panda3D 1.6 Game Beginner's Guide",
                      @"Unity Game Development Essentials",
                      @"Unity 3D Development by Example",
                      @"Mathematics for 3D Game Programming"];
    
    // create author array
    self.authorName = @[@"Pablo Ruiz",
                        @"David Brian Matthews",
                        @"Will Goldstone",
                        @"Ryan Henson Creighton",
                        @"Eric Lengyel"];
    
    // create info array
    self.info = @[@"This book will teach you the fundamentals of how to write games using the Cocos2D framework.",
                  @"Panda3D is a game engine for 3D development. It is open source, and free for any purpose.",
                  @"This book provides an in depth look at the Unity 3D game engine.",
                  @"This book provides an introduction to developing games with the Unity 3D game engine.",
                  @"This book illustrates mathematical techniques that a software engineer would need to create a professional 3D game engine."];
    
    // create location array
    self.location = @[@"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_350541_AN?      sid=6e34b7ff-986e-4526-a40d-259539563e72@sessionmgr14&vid=9&format=EB&rid=1",
                      @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_356983_AN?sid=6e34b7ff-986e-4526-a40d-259539563e72@sessionmgr14&vid=6&format=EB&rid=1",
                      @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_333820_AN?sid=6e34b7ff-986e-4526-a40d-259539563e72@sessionmgr14&vid=11&format=EB&rid=1",
                      @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_345698_AN?sid=6e34b7ff-986e-4526-a40d-259539563e72@sessionmgr14&vid=13&format=EB&rid=1",
                      @"http://web.ebscohost.com.oclc.fullsail.edu:81/ehost/ebookviewer/ebook/nlebk_365853_AN?sid=6e34b7ff-986e-4526-a40d-259539563e72@sessionmgr14&vid=15&format=EB&rid=1"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// get array size
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.ebooks count];
}

// handle cells
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
    
    cell.textLabel.text = self.ebooks[indexPath.row];
    return cell;
}

// row selection handler
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.ebooks[indexPath.row];
    NSLog(@"Row %i", indexPath.row);
    NSLog(@"You selected %@", rowValue);
    
    // handle table view controller
    TableViewController *tableSelection = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    
    // call table view controller
    [self presentViewController:tableSelection animated:true completion:nil];
    
    // set detail title text
    tableSelection.detailName.text = (NSString *)[ebooks objectAtIndex:indexPath.row];
    
    // set book name text
    tableSelection.bookName.text = (NSString *)[bookName objectAtIndex:indexPath.row];
    
    // set author text
    tableSelection.authorName.text = (NSString *)[authorName objectAtIndex:indexPath.row];
    
    // set info text
    tableSelection.info.text = (NSString *)[info objectAtIndex:indexPath.row];
    
    // set location text
    tableSelection.location.text = (NSString *)[location objectAtIndex:indexPath.row];
}


@end
