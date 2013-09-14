//
//  FirstChildViewController.m
//  ProjectTwo
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "FirstChildViewController.h"
#import "SecondChildViewController.h"

@interface FirstChildViewController ()

@end

@implementation FirstChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick2D:(id)sender
{
    SecondChildViewController *secondChild = [[SecondChildViewController alloc] initWithNibName:@"SecondChildViewController" bundle:nil];
    if (secondChild != nil)
    {
        [self.navigationController pushViewController:secondChild animated:true];
    }
}

@end
