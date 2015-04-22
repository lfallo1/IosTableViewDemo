//
//  DetailViewController.h
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Superhero.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) Superhero *superhero;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *superheroImage;
@property (weak, nonatomic) IBOutlet UILabel *superheroSubtitle;
-(void)updateSuperhero:(Superhero *)s;
@end
