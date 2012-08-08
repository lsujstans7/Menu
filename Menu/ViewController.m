//
//  ViewController.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "GuestTable.h"
#import "TableCell.h"
#import "AddTableController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize tables = _tables;
@synthesize tablesTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tables = [NSMutableArray array];
    
    [self.tables addObject:[GuestTable tableWithTableNumber:11 numberOfGuests:2 serverNumber:321]];
    [self.tables addObject:[GuestTable tableWithTableNumber:42 numberOfGuests:5 serverNumber:321]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tables.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    GuestTable *instance = [self.tables objectAtIndex:indexPath.row];
    cell.mainLabel.text = [NSString stringWithFormat:@"Table %d", instance.tableNumber];
    return cell;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddViewSegue"]) {
        AddTableController *addVC = (AddTableController *)[(UINavigationController *)segue.destinationViewController topViewController];
        addVC.delegate = self;
    }
}

- (void)addTableController:(AddTableController *)addVC didSaveItem:(GuestTable*)newTable
{
    // We add the newItem to our items array
    [self.tables addObject:newTable];
    // We then have to call reloadData on tableview to tell it to refresh data
    [self.tablesTableView reloadData];
    }
@end
