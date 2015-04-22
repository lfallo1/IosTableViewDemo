//
//  SuperheroTableViewCell.h
//  TableViewDemo
//
//  Created by Lance Fallon on 4/22/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Superhero.h"

@interface SuperheroTableViewCell : UITableViewCell
@property (nonatomic,weak)Superhero *superhero;
-(void)createCell:(Superhero *)s;
@end
