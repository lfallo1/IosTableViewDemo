//
//  DetailViewController.h
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Superhero.h"
#import "SuperheroDal.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) Superhero *superhero;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *superheroImage;
@property (weak, nonatomic) IBOutlet UILabel *superheroSubtitle;
@property NSInteger idx;
-(void)updateSuperhero:(Superhero *)s index:(NSInteger)i;
@end
