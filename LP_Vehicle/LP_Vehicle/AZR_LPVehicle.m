//
//  AZR_LPVehicle.m
//  LP_Vehicle
//
//  Created by Vatsaev on 21/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "AZR_LPVehicle.h"

@implementation AZR_LPVehicle

-(id)init{
    
    return [self initWithDoors:4 andPower:100];
    
}

-(id)initWithName:(NSString *)name{
    self = [super init];
    if(self){
        self.name=name;
        self.nbDoors = 0;
        self.power = 0;
        
        return self;
    }else return nil;
    
}

+(AZR_LPVehicle*)vehicleWithName:(NSString *)name{
    return [[[AZR_LPVehicle alloc] initWithName:name] autorelease];
}

-(id)initWithDoors:(NSInteger)doors{
    return [self initWithDoors:doors andPower:100];
    
    //memory saturation (creation without release)
}

-(id)initWithDoors:(NSInteger)doors andPower:(NSInteger)power{
    self = [super init];
    if(self){
        self.nbDoors = doors;
        self.power = power;
        self.name = @"Car";
        return self;
    }else return nil;
}



+(NSString*)info{
    return @"this is a vehicle";
}





-(NSString*)description{

    return [NSString stringWithFormat: @"This is %@, with %ld doors and %ld HP",self.name, (long)self.nbDoors,(long)self.power];
    
}

@end
