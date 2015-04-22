//
//  SuperheroTableViewCell.m
//  TableViewDemo
//
//  Created by Lance Fallon on 4/22/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "SuperheroTableViewCell.h"

@interface SuperheroTableViewCell()
@property (nonatomic, strong) IBOutlet UILabel *superheroName;
@property (nonatomic, strong) IBOutlet UILabel *superheroSubtext;
@property (nonatomic, strong) IBOutlet UIImageView *superheroImage;
@end

@implementation SuperheroTableViewCell
-(void)createCell:(Superhero *)s{
    self.superhero = s;
    self.superheroName.text = [s name];
    self.superheroSubtext.text = [s label];
    self.superheroImage.image = [UIImage imageNamed:[s img]];
}
@end
