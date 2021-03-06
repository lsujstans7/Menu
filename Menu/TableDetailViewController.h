//
//  TableDetailViewController.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GuestTable.h"
#import "AddFoodViewController.h"


@interface TableDetailViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, AddFoodViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *tableNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *numGuestsLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtotalLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (strong, nonatomic) GuestTable *table;
@property (weak, nonatomic) IBOutlet UITableView *orderTable;


@end
