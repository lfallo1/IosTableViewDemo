//
//  Superhero.h
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Superhero : NSObject
@property NSString *name;
@property (nonatomic, weak) NSString *img;
@property (nonatomic, weak) UIColor *color;
@property (nonatomic, weak) NSString *label;

-(id)initWithName:(NSString *)n img:(NSString *)i color:(UIColor *)c label:(NSString *)l;

@end
