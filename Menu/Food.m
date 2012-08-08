//
//  Food.m
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Food.h"

@implementation Food
@synthesize type = _type;
@synthesize ingredients = _ingredients;
@synthesize allergyInformation = _allergyInformation;
@synthesize modifiers = _modifiers;

+ (Food *)foodWithName:(NSString *)name price:(float)price type:(NSString *)type ingredients:(NSMutableArray *)ingredients allergyInformation:(NSString *)allergyInformation modifiers:(NSString *)modifiers;
{
    Food *newFood = [[Food alloc] init];
    
    newFood.name = name;
    newFood.price = price;
    newFood.type = type;
    newFood.ingredients = ingredients;
    newFood.allergyInformation = allergyInformation;
    newFood.modifiers = modifiers;
    
    return newFood;
}
@end
