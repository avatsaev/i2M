//
//  AZR_ViewController.m
//  LP_Vehicle
//
//  Created by Vatsaev on 21/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "AZR_ViewController.h"

#import "AZR_LPVehicle.h"

@interface AZR_ViewController ()



@end

@implementation AZR_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //self.v1 = [[AZR_LPVehicle alloc] init];
    //self.v1.nbDoors =4;
    //self.v1.power= 200;
    //self.v1.name= @"Toyota Supra";
    self.v1 = [[AZR_LPVehicle alloc] initWithName:@"Toyota"];
    self.v2 = [AZR_LPVehicle vehicleWithName:@"Nissan"];
    [self.v2 retain];
    
    
    self.table  = [NSArray arrayWithObjects:@"Lafumette",@"Aslan",@"TRrod", nil];
    //[self.table release];
    //self.table = [NSArray arrayWithObjects:@"dan", nil];
    
    for(int i = 0; i<self.table.count;i++ ){
        NSLog(@"%@",[self.table objectAtIndex:i]);
    }
    
    self.tableD = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"Paris",@"Moscow", nil] forKeys:[NSArray arrayWithObjects:@"France",@"Russia", nil]];
    
    
    NSLog(@"Capital of France is %@", self.tableD[@"France"]);
    
    
    NSLog(@"%@",self.v2);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)infoBtnTouch:(id)sender {
    
    if (sender == self.infoBtn) {
        NSLog(@"%@",[AZR_LPVehicle info]);
        self.infoLabel.text = [NSString stringWithFormat:@"%@",self.v1];
    }else if (sender == self.infoBtn2){
        self.infoLabel2.text = [NSString stringWithFormat:@"%@",self.v2];
    }
    
}



- (IBAction)lblSwtched:(id)sender {
    if(self.lblSwitcher.state)
        NSLog(@"yes");
    else
        NSLog(@"no");
    
}
- (void)dealloc {
    [_infoBtn2 release];
    [_infoLabel2 release];
    [super dealloc];
}
@end
