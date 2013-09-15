//
//  AZR_ViewController.m
//  UITests
//
//  Created by Vatsaev on 14/09/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "AZR_ViewController.h"

@interface AZR_ViewController ()

@end

@implementation AZR_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.text =@"Bonjour";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_but1 release];
    [_textField release];
    [_lbl1 release];
    [super dealloc];
}
- (IBAction)btn1Even:(id)sender {
    
    NSString* chaine = [NSString stringWithFormat:@"Bonjour, %@",self.textField.text];
    self.lbl1.text=chaine;
}
@end
