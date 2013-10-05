//
//  TableViewController.m
//  Ski
//
//  Created by A. Vatsaev on 28/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "TableViewController.h"
#import "CountryDetailsViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

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
                      @"Countries" ofType:@"plist"];
    
    self.countries = [[NSArray alloc] initWithContentsOfFile:path];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.countries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString* imageName = [NSString stringWithFormat: @"%@.png",self.countries[indexPath.row][@"code"]];
    cell.imageView.image = [UIImage imageNamed:imageName];
    cell.textLabel.text = self.countries[indexPath.row][@"name"];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    CountryDetailsViewController* countryView = (CountryDetailsViewController*)segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    countryView.cCode= self.countries[indexPath.row][@"code"];
    
}


@end
