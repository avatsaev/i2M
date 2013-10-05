//
//  TableViewController.h
//  Ski
//
//  Created by A. Vatsaev on 28/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

//Protocol <IUTableViewDataSource>
//un .h sans .m
//il peut y avoir pluieurs protocole par class
//avantage: objects peuvent communiquer entre eux

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController


@property (strong, nonatomic) NSArray *countries;

@end
