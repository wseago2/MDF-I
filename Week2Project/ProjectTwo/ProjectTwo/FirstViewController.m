//
//  FirstViewController.m
//  ProjectTwo
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

#import "FirstChildViewController.h"
#import "SecondChildViewController.h"

@implementation FirstViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick2D:(id)sender
{
    FirstChildViewController *firstChild = [[FirstChildViewController alloc] initWithNibName:@"FirstChildViewController" bundle:nil];
    if (firstChild != nil)
    {
        [self.navigationController pushViewController:firstChild animated:true];
    }
}

-(IBAction)onClick3D:(id)sender
{
    SecondChildViewController *secondChild = [[SecondChildViewController alloc] initWithNibName:@"SecondChildViewController" bundle:nil];
    if (secondChild != nil)
    {
        [self.navigationController pushViewController:secondChild animated:true];
    }
}

@end
