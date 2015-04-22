//
//  DetailViewController.m
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    self.nameLabel.text = [self.superhero name];
    self.superheroSubtitle.text = [self.superhero label];
    self.superheroImage.image = [UIImage imageNamed:[self.superhero img]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateSuperhero:(Superhero *)s{
    self.superhero = s;
}

@end
