//
//  GuestTable.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GuestTable.h"

@implementation GuestTable

@synthesize tableNumber = _tableNumber;
@synthesize serverNumber = _serverNumber;
@synthesize numberGuests = _numberGuests;
@synthesize subtotal = _subtotal;
@synthesize total = _total;

+ (GuestTable *)tableWithTableNumber:(int)tableNumber numberOfGuests:(int)numberGuests serverNumber:(int)serverNumber;
{
    GuestTable *newTable = [[GuestTable alloc] init];
    
    newTable.tableNumber = tableNumber;
    newTable.numberGuests = numberGuests;
    newTable.serverNumber = serverNumber;
    newTable.subtotal = 0.00;
    newTable.total = 0.00;
    
    return newTable;
}


@end
