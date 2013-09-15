//
//  ViewController.h
//  Project0
//
//  Created by Vatsaev on 14/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AZR_Driver.h"
#import "AZR_Vehicule.h"
@class AZR_Vehicule;
@class AZR_Driver;


@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIButton *createVehicle;
@property (retain, nonatomic) IBOutlet UIButton *giveVehicle;
@property (retain, nonatomic) IBOutlet UIButton *showDetails;
@property (retain, nonatomic) IBOutlet UIButton *retainIt;
@property (retain, nonatomic) IBOutlet UIButton *destroyVehicle;
- (IBAction)showDetails:(id)sender;

- (IBAction)createVehicle:(id)sender;
- (IBAction)giveVehicle:(id)sender;


- (IBAction)retainIt:(id)sender;
- (IBAction)destroyVehicle:(id)sender;


@property (retain) AZR_Driver* d1;
@property (retain) AZR_Vehicule* v1;
@property (retain) AZR_Driver* d2;
@property (retain) AZR_Vehicule* v2;


@end
