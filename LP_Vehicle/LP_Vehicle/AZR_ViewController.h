//
//  AZR_ViewController.h
//  LP_Vehicle
//
//  Created by Vatsaev on 21/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "AZR_LPVehicle.h"

@interface AZR_ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *infoBtn;
- (IBAction)infoBtnTouch:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *infoBtn2;

@property (strong, nonatomic) IBOutlet UILabel *infoLabel;
@property (retain) AZR_LPVehicle* v1;
@property (retain) AZR_LPVehicle* v2;
@property (retain) NSArray* table;
@property (retain) NSDictionary* tableD;
@property (strong, nonatomic) IBOutlet UISwitch *lblSwitcher;
@property (retain, nonatomic) IBOutlet UILabel *infoLabel2;

- (IBAction)lblSwtched:(id)sender;

@end
