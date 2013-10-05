//
//  StationDetailsViewController.m
//  Ski
//
//  Created by A. Vatsaev on 05/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "StationDetailsViewController.h"
#import "MapAnnotation.h"

@interface StationDetailsViewController ()

@end

@implementation StationDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.locationView.text=self.location;
    
    CLLocationCoordinate2D annotationCoord;
   
    annotationCoord.latitude = [self.lat doubleValue];
    annotationCoord.longitude = [self.lon doubleValue];
    
    MapAnnotation *annotationPoint = [[MapAnnotation alloc] init];
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = self.location;
    
    [self.mapView addAnnotation:annotationPoint];
    self.mapView.centerCoordinate = annotationCoord;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
