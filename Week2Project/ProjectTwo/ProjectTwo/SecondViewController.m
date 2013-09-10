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
}


@end
