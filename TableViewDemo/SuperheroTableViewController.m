//
//  SuperheroTableViewController.m
//  TableViewDemo
//
//  Created by Lance Fallon on 4/21/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "SuperheroTableViewController.h"
#import "SuperheroTableViewCell.h"

@interface SuperheroTableViewController ()
{
    NSMutableArray *superheroes;
}
@end

@implementation SuperheroTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SuperheroDal loadSuperheroes];
    [self setTitle:@"Superheroes"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[SuperheroDal getSuperheroList] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SuperheroTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SuperheroCell"];
    Superhero *s = [[SuperheroDal getSuperheroList] objectAtIndex:indexPath.row];
    [cell createCell:s];
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SuperheroCell" forIndexPath:indexPath];
//    Superhero *s =[[SuperheroDal getSuperheroList] objectAtIndex:indexPath.row];
//    cell.textLabel.text = [s name];
//    cell.detailTextLabel.text = [s label];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    Superhero *s = [[SuperheroDal getSuperheroList] objectAtIndex:indexPath.row];
    NSString *msg = [NSString stringWithFormat:@"Known as the %@", [s label]];
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:[s name] message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alertView show];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    DetailViewController *ctrl = [segue destinationViewController];
    Superhero *s = [[SuperheroDal getSuperheroList] objectAtIndex:indexPath.row];
    [ctrl updateSuperhero:s index:indexPath.row];
}

@end
