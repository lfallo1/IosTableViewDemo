//
//  SuperheroDal.h
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Superhero.h"

@interface SuperheroDal : NSObject
+(NSMutableArray *)getSuperheroList;
+(void)loadSuperheroes;
+(Superhero *)getByIndex:(NSInteger)index;
@end
