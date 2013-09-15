//
//  AZR_Vehicule.h
//  Project0
//
//  Created by Vatsaev on 12/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AZR_Driver.h"

@class AZR_Driver;

@interface AZR_Vehicule : NSObject{
    
}

-(id) init ;

-(void)start;

//-(void)setNbPlaces:(int) p;
//-(int)getNbPlaces;

@property (assign) int nbPortes;
@property (assign) int power;
@property (retain) AZR_Driver* driver;



@end
