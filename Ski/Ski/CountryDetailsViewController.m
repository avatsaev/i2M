//
//  CountryDetailsViewController.m
//  Ski
//
//  Created by A. Vatsaev on 05/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "CountryDetailsViewController.h"
#import "StationDetailsViewController.h"

@interface CountryDetailsViewController ()

@end

@implementation CountryDetailsViewController{
    NSInteger ligne;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:
                      @"SkiStations" ofType:@"plist"];

    self.country = [[NSDictionary alloc] initWithContentsOfFile:path][self.cCode];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.country[@"stations"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.country[@"stations"][indexPath.row][@"name"];
    cell.detailTextLabel.text =self.country[@"stations"][indexPath.row][@"location"];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Accesory tapped");
    ligne = indexPath.row;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:self.country[@"stations"][indexPath.row][@"name"]
                                                    message:[NSString stringWithFormat:@"Location de la station: %@",self.country[@"stations"][indexPath.row][@"location"] ]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    //[alert release];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    StationDetailsViewController* seg =(StationDetailsViewController*)segue.destinationViewController;
    seg.title =@"Station";
     NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    seg.location = self.country[@"stations"][indexPath.row][@"location"] ;
    seg.lat=self.country[@"stations"][indexPath.row][@"lat"] ;
    
    seg.lon=seg.lat=self.country[@"stations"][indexPath.row][@"lon"] ;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
