//
//  AddTableController.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AlertViewController;
@class GuestTable;
@class AddTableController;

@protocol AddTableControllerDelegate <NSObject>
// Define to methods to be called on our delegate
- (void)addTableController:(AddTableController *)addVC didSaveItem:(GuestTable *)newTable;
- (void)addTableControllerDidCancel:(AddTableController *)addVC;
@end

@interface AddTableController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *tableNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberGuestsTextField;
@property (weak, nonatomic) IBOutlet UITextField *serverNumberTextField;

- (IBAction)addTableDone:(UIBarButtonItem *)sender;
- (IBAction)cancel:(UIBarButtonItem *)sender;

@property (weak, nonatomic) id <AddTableControllerDelegate> delegate;
@end
