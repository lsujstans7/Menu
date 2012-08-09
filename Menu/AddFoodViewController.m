//
//  AddFoodViewController.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddFoodViewController.h"
#import "Food.h"
#import "ItemCell.h"
#import "ViewController.h"

@interface AddFoodViewController ()

@end

@implementation AddFoodViewController
@synthesize foodName;
@synthesize items = _items;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.items = [NSMutableArray array];
    
    NSMutableArray *empty;
    
    [self.items addObject:[Food foodWithName:@"pasta" price:10.99 type:@"entree" ingredients:empty allergyInformation:@"none" modifiers:@"none"]];
    [self.items addObject:[Food foodWithName:@"steak" price:10.99 type:@"entree" ingredients:empty allergyInformation:@"none" modifiers:@"none"]];
    [self.items addObject:[Food foodWithName:@"capri" price:10.99 type:@"app" ingredients:empty allergyInformation:@"none" modifiers:@"none"]];
    [self.items addObject:[Food foodWithName:@"cake" price:10.99 type:@"dessert" ingredients:empty allergyInformation:@"none" modifiers:@"none"]];
    [self.items addObject:[Food foodWithName:@"chicken" price:10.99 type:@"entree" ingredients:empty allergyInformation:@"" modifiers:@""]];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [self setFoodName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell"];
    Item *instance = [self.items objectAtIndex:indexPath.row];
    cell.mainItemLabel.text = [NSString stringWithFormat:@"%@", instance.name];
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
