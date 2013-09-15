//
//  AZR_Driver.m
//  Project0
//
//  Created by Vatsaev on 14/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "AZR_Driver.h"

@implementation AZR_Driver

-(id)init{
    [super init];
    self.name=@"Toto";
    return self;
}

-(void)giveVehicle:(AZR_Vehicule *)v{
    [self.vehicule release];
    self.vehicule = v;
    v.driver = self;
}

-(void)takeCurrentVehicle{
    self.vehicule.driver = nil;
    self.vehicule=nil;
}


@end
