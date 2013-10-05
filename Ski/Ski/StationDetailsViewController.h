//
//  StationDetailsViewController.h
//  Ski
//
//  Created by A. Vatsaev on 05/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface StationDetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) NSNumber * lat;
@property (strong, nonatomic) NSNumber * lon;
@property (strong, nonatomic) NSString * location;
@property (strong, nonatomic) IBOutlet UILabel *locationView;

@end
