//
//  Superhero.m
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "Superhero.h"

@implementation Superhero
-(id)initWithName:(NSString *)n img:(NSString *)i color:(UIColor *)c label:(NSString *)l{
    self = [super init];
    if(self){
        self.name = n;
        self.img = i;
        self.color = c;
        self.label = l;
    }
    return self;
}
@end

