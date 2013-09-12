//
//  AZR_Vehicule.m
//  Project0
//
//  Created by Vatsaev on 12/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "AZR_Vehicule.h"

@implementation AZR_Vehicule

//@synthesize nbPortes;

-(id)init{
    self = [super init];
    
    if (self){
        self.nbPortes=4;
        self.power=200;
        return self;
    }
    else return nil;
}

-(id)initWithPower: (int)power{
    self = [super init];
    self.power=power;
    if (self) return self;
    else return nil;
}

-(void)start{
    NSLog(@"vroum!");
}


//-(void)setNbPlaces:(int) p{
//    nbPlaces =p;
//}

//-(int)getNbPlaces{
//    return nbPlaces;
///}

@end
