//
//  GuestTable.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GuestTable.h"
#import "Food.h"
#import "Item.h"

@implementation GuestTable

@synthesize tableNumber = _tableNumber;
@synthesize serverNumber = _serverNumber;
@synthesize numberGuests = _numberGuests;
@synthesize subtotal = _subtotal;
@synthesize total = _total;
@synthesize tableOrder = _tableOrder;

+ (GuestTable *)tableWithTableNumber:(int)tableNumber numberOfGuests:(int)numberGuests serverNumber:(int)serverNumber;
{
    GuestTable *newTable = [[GuestTable alloc] init];
    
    newTable.tableNumber = tableNumber;
    newTable.numberGuests = numberGuests;
    newTable.serverNumber = serverNumber;
    newTable.subtotal = 0.00;
    newTable.total = 0.00;
        
    newTable.tableOrder = [NSMutableArray array];
    
    
    //[newTable.tableOrder addObject:[Food foodWithName:@"chicken" price:10.99 type:@"entree" ingredients:empty allergyInformation:@"" modifiers:@""]];
    //[newTable.tableOrder addObject:[Food foodWithName:@"chicken" price:10.99 type:@"entree" ingredients:empty allergyInformation:@"" modifiers:@""]];

    
    
    return newTable;
}


- (float)getSubtotal;
{
    float sum = 0;
    for (int i=0; i<self.tableOrder.count; i++) {
        Item *currentItem = [self.tableOrder objectAtIndex:i];
        sum += currentItem.price;
    }
    
    return sum;
    
}


@end
