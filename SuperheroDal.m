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
    
    Superhero *superhero3 = [[Superhero alloc]initWithName:@"Captain Justice" img:@"CaptainJustice" color: [UIColor redColor] label:@"Savior of Man"];
    
    Superhero *superhero4 = [[Superhero alloc]initWithName:@"Captain America" img:@"CaptainAmerica" color: [UIColor darkGrayColor] label:@"Patriot of Justice"];
    
    Superhero *superhero5 = [[Superhero alloc]initWithName:@"Celestia" img:@"Celestia" color: [UIColor redColor] label:@"Goddess of Justice"];
    
    Superhero *superhero6 = [[Superhero alloc]initWithName:@"Galaxy Angel" img:@"GalaxyAngel" color: [UIColor darkGrayColor] label:@"Angel of Freedom"];
    
    Superhero *superhero7 = [[Superhero alloc]initWithName:@"Ms Marvel" img:@"MsMarvel" color: [UIColor redColor] label:@"Princess of Night"];
    
    Superhero *superhero8 = [[Superhero alloc]initWithName:@"Nova" img:@"Nova" color: [UIColor darkGrayColor] label:@"Galactic Defender"];
    
    Superhero *superhero9 = [[Superhero alloc]initWithName:@"Psylocke" img:@"Psylocke" color: [UIColor redColor] label:@"Ninja Warrior"];
    
    Superhero *superhero10 = [[Superhero alloc]initWithName:@"Supergirl" img:@"Supergirl" color: [UIColor darkGrayColor] label:@"Queen of Righteousness"];
    
    Superhero *superhero11= [[Superhero alloc]initWithName:@"Superman" img:@"Superman" color: [UIColor redColor] label:@"Man of Steel"];
    
    Superhero *superhero12 = [[Superhero alloc]initWithName:@"Supermum" img:@"Supermum" color: [UIColor darkGrayColor] label:@"Crimefighting bombeshell"];
    
        Superhero *superhero13 = [[Superhero alloc]initWithName:@"Power Girl" img:@"PowerGirl" color: [UIColor darkGrayColor] label:@"Princess of Hope"];

    
    superheroList = [[NSMutableArray alloc]initWithObjects:superhero1, superhero2, superhero3, superhero4, superhero5, superhero6, superhero7, superhero8, superhero9, superhero10, superhero11, superhero12, superhero13, nil];
    
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
