//
//  AZR_Vehicule.h
//  Project0
//
//  Created by Vatsaev on 12/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AZR_Vehicule : NSObject{

    int nbPlaces;
    
}

-(id) init ;

-(void)start;

-(void)setNbPlaces:(int) p;
-(int)getNbPlaces;



@end
