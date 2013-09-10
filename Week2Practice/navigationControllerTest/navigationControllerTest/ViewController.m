//
//  ViewController.m
//  navigationControllerTest
//
//  Created by Wesley Seago on 9/10/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onClick:(id)sender
{
    // create secondView controller
    SecondView *secondView = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil)
    {
        // move to secondView controller
        [self.navigationController pushViewController:secondView animated:true];
    }
}

- (void)viewDidLoad
{
    self.title = @"Hello";
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
