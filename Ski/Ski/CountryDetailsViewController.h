//
//  CountryDetailsViewController.h
//  Ski
//
//  Created by A. Vatsaev on 05/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryDetailsViewController : UITableViewController

@property (strong, nonatomic) NSString *cCode;
@property (strong, nonatomic) NSDictionary *country;


@end
