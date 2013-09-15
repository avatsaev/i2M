//
//  AZR_Driver.h
//  Project0
//
//  Created by Vatsaev on 14/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AZR_Vehicule.h"
@class AZR_Vehicule;

@interface AZR_Driver : NSObject


-(void)giveVehicle: (AZR_Vehicule*) v;
-(void)takeCurrentVehicle;

@property (retain) AZR_Vehicule *vehicule;
@property (retain) NSString* name;

@end
