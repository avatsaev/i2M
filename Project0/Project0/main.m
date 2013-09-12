//
//  main.m
//  Project0
//
//  Created by Vatsaev on 12/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.

#import <UIKit/UIKit.h>
#import "AZR_Vehicule.h"
#import "AZR_AppDelegate.h"

int main(int argc, char *argv[]){
    
    
    
    AZR_Vehicule* v = [[AZR_Vehicule alloc] init];
        
    [v start];
    
    [v setNbPlaces:4];
    
    NSLog(@"Places %d",[v getNbPlaces]);
    
    [v release];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*NSLog(@"hello world");
    int a = 79;
    NSLog(@"a=%d",a);
    
    unsigned long b = -79;
    
    NSLog(@"b=%lu",b);
    
    float c = 1.44099090;
    double d = 2.0493580384593;
    
    NSLog(@"d=%f c = %f", d, c);
    
    
    char char_ = 'a'; //max 0xff
    
    
    NSLog(@"char_ %c",char_);
    
    
    NSString *s = @"monkey";
    NSLog(@" sring = %@",s);
    
    
    int int_array[5] = {1,2,4,5,6};
    
    for (int i = 0; i < 5; i++) {
        NSLog(@"%d",int_array[i]);
    }
    
    
    char new_s[5] = {84,79,84,79,0};
    
    
    for (int i = 0; i < 5; i++) {
        NSLog(@"%c",new_s[i]);
    }
    
    NSLog(@"%s",new_s);
    
    
    int *pointeur= &a;
    
    NSLog(@"%x = %d",pointeur, *pointeur);
    
    
    *pointeur=34;
    
    
    NSLog(@"%x = %d",pointeur, *pointeur);
    
    
    char *chaine;
    chaine = malloc (100);
    chaine = "bonjour";
    
    NSLog(@"%s", chaine);*/
    
    
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AZR_AppDelegate class]));
    }
    
}