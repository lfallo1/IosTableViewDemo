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

@synthesize idx;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *nextPicSwipeGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(nextPicSwipe:)];
    [self.view addGestureRecognizer:nextPicSwipeGesture];
    
    UISwipeGestureRecognizer *nextPicSwipeGestureLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(nextPicSwipe:)];
    nextPicSwipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:nextPicSwipeGestureLeft];
}

-(void)nextPicSwipe:(UISwipeGestureRecognizer *)sender{
    CATransition *animation = [CATransition animation];
    [animation setDelegate:self];
    [animation setType:kCATransitionPush];
    [animation setDuration:0.25];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault]];
    
    if(sender.direction == UISwipeGestureRecognizerDirectionLeft){
        [animation setSubtype:kCATransitionFromRight];
        self.idx = ( self.idx + 1 ) % [[SuperheroDal getSuperheroList] count];
        self.superhero = [SuperheroDal getByIndex:self.idx];
    }
    else{
        [animation setSubtype:kCATransitionFromLeft];
        self.idx--;
        if(self.idx < 0){
            self.idx = [[SuperheroDal getSuperheroList]count] - 1;
        }
        self.superhero = [SuperheroDal getByIndex:self.idx];
    }
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self updateImage];
}

-(void)updateImage{
    self.nameLabel.text = [self.superhero name];
    self.superheroSubtitle.text = [self.superhero label];
    self.superheroImage.image = [UIImage imageNamed:[self.superhero img]];
}

-(void)viewWillAppear:(BOOL)animated{
    [self updateImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateSuperhero:(Superhero *)s index:(NSInteger)i{
    self.superhero = s;
    self.idx = i;
}

@end
