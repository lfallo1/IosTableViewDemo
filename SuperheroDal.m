//
//  SuperheroDal.m
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

//
//  SuperheroDAL.m
//  IosStanford1
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "SuperheroDal.h"

@implementation SuperheroDal

NSMutableArray *superheroList;

+(void)loadSuperheroes{
    
    //hard coded values (ideally this would be retrieved from a db, local storage, ajax, etc)
    
    Superhero *superhero1 = [[Superhero alloc]initWithName:@"Spiderman" img:@"Spiderman" color: [UIColor redColor] label:@"Webslinger"];
    
    Superhero *superhero2 = [[Superhero alloc]initWithName:@"Batman" img:@"Batman" color: [UIColor darkGrayColor] label:@"Dark knight"];
    
    Superhero *superhero3= [[Superhero alloc]initWithName:@"Superman" img:@"Superman" color: [UIColor redColor] label:@"Man of Steel"];

    
    superheroList = [[NSMutableArray alloc]initWithObjects:superhero1, superhero2, superhero3, nil];
    
    NSSortDescriptor *sortDesc = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    
    [superheroList sortUsingDescriptors:[NSArray arrayWithObjects:sortDesc, nil]];
}

+(NSMutableArray *)getSuperheroList{
    return superheroList;
}

+(Superhero *)getByIndex:(NSInteger)index{
    return [superheroList objectAtIndex:index];
}

@end
