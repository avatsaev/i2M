//
//  ViewController.m
//  Project0
//
//  Created by Vatsaev on 14/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.d1 = [[AZR_Driver alloc] init ];
    self.d1.name = @"Mike";
    
    
    self.d2 = [[AZR_Driver alloc] init ];
    self.d2.name = @"Greg";
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_createVehicle release];
    [_giveVehicle release];
    [_showDetails release];
    [_retainIt release];
    [_destroyVehicle release];
    [super dealloc];
}


- (IBAction)createVehicle:(id)sender {
    
    self.v1 = [[AZR_Vehicule alloc] init];
    self.v1.nbPortes = 4;
    
    
}

- (IBAction)giveVehicle:(id)sender {
    
    [self.d1 giveVehicle:self.v1];
}

- (IBAction)showDetails:(id)sender {
    
    NSLog(@"Condicteur %@ a une voiture a %d portes", self.d1.name, self.v1.nbPortes);
}

- (IBAction)retainIt:(id)sender {
}

- (IBAction)destroyVehicle:(id)sender {
    self.d1.takeCurrentVehicle;
    [self.v1 dealloc];
}
@end
