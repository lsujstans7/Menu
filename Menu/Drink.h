//
//  Drink.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Item.h"

@interface Drink : Item

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *modifiers;
@property (nonatomic, strong) NSMutableArray *ingredients;

+ (Drink *)drinkWithName:(NSString *)name price:(float)price type:(NSString *)type ingredients:(NSMutableArray *)ingredients modifiers:(NSString *)modifiers;

@end
