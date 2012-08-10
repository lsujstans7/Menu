//
//  TableDetailViewController.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TableDetailViewController.h"
#import "OrderCell.h"
#import "Item.h"

@interface TableDetailViewController ()

@end

@implementation TableDetailViewController
@synthesize tableNumberLabel = _tableNumberLabel;
@synthesize numGuestsLabel = _numGuestsLabel;
@synthesize subtotalLabel = _subtotalLabel;
@synthesize totalLabel = _totalLabel;

@synthesize table = _table;
@synthesize orderTable = _orderTable;

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
    
    
    self.tableNumberLabel.text = [NSString stringWithFormat:@"Table %d", self.table.tableNumber];
    self.numGuestsLabel.text = [NSString stringWithFormat:@"number of guests: %d", self.table.numberGuests];
    self.subtotalLabel.text = [NSString stringWithFormat:@"%.02f", [self.table getSubtotal]];
    self.totalLabel.text = [NSString stringWithFormat:@"%.02f", ([self.table getSubtotal] + ([self.table getSubtotal] * 0.09 ))] ;
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setTableNumberLabel:nil];
    [self setNumGuestsLabel:nil];
    [self setSubtotalLabel:nil];
    [self setTotalLabel:nil];
    [self setOrderTable:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count %d", self.table.tableOrder.count);
    return self.table.tableOrder.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    OrderCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OrderCell"];
    Item *instance = [self.table.tableOrder objectAtIndex:indexPath.row];
    cell.itemFoodLabel.text = [NSString stringWithFormat:@"%@", instance.name];
    cell.itemPrice.text = [NSString stringWithFormat:@"%.02f", instance.price];
    return cell;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddItemSegue"]) {
        AddFoodViewController *addVC = (AddFoodViewController *)segue.destinationViewController;
        addVC.delegate = self;
    }
}

- (void)addFoodViewController:(AddFoodViewController *)addVC didSaveItem:(Item *)newItem
{
    [self.table.tableOrder addObject:newItem];
    [self.orderTable reloadData];
    self.subtotalLabel.text = [NSString stringWithFormat:@"%.02f", [self.table getSubtotal]];
    self.totalLabel.text = [NSString stringWithFormat:@"%.02f", ([self.table getSubtotal] + ([self.table getSubtotal] * 0.09 ))] ;
}


@end
