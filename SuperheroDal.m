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
#import "Superhero.h"

@implementation SuperheroDal

+(NSMutableArray *)loadSuperheroes{
    
    //hard coded values (ideally this would be retrieved from a db, local storage, ajax, etc)
    
    Superhero *superhero1 = [[Superhero alloc]initWithName:@"Spiderman" img:@"Spiderman.jpg" color: [UIColor redColor] label:@"Webslinger"];
    
    Superhero *superhero2 = [[Superhero alloc]initWithName:@"Batman" img:@"Batman.jpg" color: [UIColor darkGrayColor] label:@"Dark knight"];

    
    NSMutableArray *superheroList = [[NSMutableArray alloc]initWithObjects:superhero1, superhero2, nil];
    
    return superheroList;
}

@end
