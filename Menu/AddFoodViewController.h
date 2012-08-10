//
//  AddFoodViewController.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Item;
@class AddFoodViewController;

@protocol AddFoodViewControllerDelegate <NSObject>
// Define to methods to be called on our delegate
- (void)addFoodViewController:(AddFoodViewController *)addVC didSaveItem:(Item *)newItem;
@end


@interface AddFoodViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *foodName;
@property (nonatomic, strong) NSMutableArray *items;

@property (weak, nonatomic) id<AddFoodViewControllerDelegate> delegate;
@end
