//
//  Food.h
//  Menu
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Item.h"

@interface Food : Item

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSMutableArray *ingredients;
@property (nonatomic, strong) NSString *allergyInformation;
@property (nonatomic, strong) NSString *modifiers;

+ (Food *)foodWithName:(NSString *)name price:(float)price type:(NSString *)type ingredients:(NSMutableArray *)ingredients allergyInformation:(NSString *)allergyInformation modifiers:(NSString *)modifiers;

@end
