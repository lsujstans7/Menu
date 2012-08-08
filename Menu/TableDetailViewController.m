//
//  TableDetailViewController.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TableDetailViewController.h"

@interface TableDetailViewController ()

@end

@implementation TableDetailViewController
@synthesize tableNumberLabel = _tableNumberLabel;
@synthesize numGuestsLabel = _numGuestsLabel;
@synthesize subtotalLabel = _subtotalLabel;
@synthesize totalLabel = _totalLabel;

@synthesize table = _table;

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
    self.subtotalLabel.text = [NSString stringWithFormat:@"%.02f", self.table.subtotal];
    self.totalLabel.text = [NSString stringWithFormat:@"%.02f", self.table.total];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setTableNumberLabel:nil];
    [self setNumGuestsLabel:nil];
    [self setSubtotalLabel:nil];
    [self setTotalLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
