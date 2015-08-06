//
//  ViewController.h
//  HW2
//
//  Created by Sareenah Douglas on 3/4/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Website;

@property (weak, nonatomic) IBOutlet UITextField *Username;

@property (weak, nonatomic) IBOutlet UITextField *Password;

@property (weak, nonatomic) IBOutlet UITextField *Counter;
@property NSMutableArray *identifiant;
@property int currentVal;


- (IBAction)incrementCounter:(id)sender;
- (IBAction)backwards:(id)sender;
- (IBAction)forwards:(id)sender;
- (IBAction)AddEntry:(id)sender;

@end

