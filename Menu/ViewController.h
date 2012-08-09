//
//  ViewController.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GuestTable.h"
#import "AddTableController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, AddTableControllerDelegate, UIAlertViewDelegate>

@property (nonatomic, strong) NSMutableArray *tables;
@property (weak, nonatomic) IBOutlet UITableView *tablesTableView;

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic) int currentTable;

@end
