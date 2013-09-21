//
//  AZR_LPVehicle.h
//  LP_Vehicle
//
//  Created by Vatsaev on 21/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AZR_LPVehicle : NSObject

@property (assign) NSInteger nbDoors;
@property (assign) NSInteger power;
@property (retain) NSString* name;

+(NSString*)info;
-(NSString*)description;

//-(id)initWithDoors: (NSInteger) doors;
//-(id)initWithPower: (NSInteger) power;
-(id)initWithName: (NSString*) name;
-(id)initWithDoors:(NSInteger)doors andPower:(NSInteger)power;
-(id)initWithDoors:(NSInteger)doors;
+(AZR_LPVehicle*)vehicleWithName:(NSString*)name;





@end
