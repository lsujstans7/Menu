//
//  Drink.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Drink.h"

@implementation Drink

@synthesize type = _type;
@synthesize modifiers = _modifiers;
@synthesize ingredients = _ingredients;

+ (Drink *)drinkWithName:(NSString *)name price:(float)price type:(NSString *)type ingredients:(NSMutableArray *)ingredients modifiers:(NSString *)modifiers;
{
    Drink *newDrink = [[Drink alloc] init];
    
    newDrink.name = name;
    newDrink.price = price;
    newDrink.type = type;
    newDrink.ingredients = ingredients;
    newDrink.modifiers = modifiers;
    
    return newDrink;
}

@end
