//
//  GuestTable.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GuestTable : NSObject
@property (nonatomic) int tableNumber;
@property (nonatomic) int serverNumber;
@property (nonatomic) int numberGuests;
@property (nonatomic) float subtotal;
@property (nonatomic) float total;
@property (nonatomic, strong) NSMutableArray *tableOrder;

+ (GuestTable *)tableWithTableNumber:(int)tableNumber numberOfGuests:(int)numberGuests serverNumber:(int)serverNumber;
@end
