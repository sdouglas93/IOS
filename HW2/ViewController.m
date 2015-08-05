//
//  ViewController.m
//  HW2
//
//  Created by Sareenah Douglas on 3/4/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "SiteValue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _identifiant = [[NSMutableArray alloc] init];
    SiteValue *hotmail=[SiteValue siteNom:@"Ray" andPassword:@"getmoney" andWebsite:@"hotmail" andCounter:12 ];
    SiteValue *gmail=[SiteValue siteNom:@"Belle" andPassword:@"getthatdoe" andWebsite:@"gmail" andCounter:30];
     SiteValue *AOL=[SiteValue siteNom:@"Day" andPassword:@"wakafloka" andWebsite:@"AOL" andCounter:40];
     SiteValue *yahoo=[SiteValue siteNom:@"Jon" andPassword:@"heyguys" andWebsite:@"yahoo" andCounter:50];
    SiteValue *twitter=[SiteValue siteNom:@"connard" andPassword:@"hurt" andWebsite:@"Twitter" andCounter:34];
    SiteValue *fb=[SiteValue siteNom:@"egoiste" andPassword:@"heyguys" andWebsite:@"yahoo" andCounter:50];

    
     [_identifiant addObject:hotmail];
     [_identifiant addObject:gmail];
     [_identifiant addObject:AOL];
     [_identifiant addObject:yahoo];
     [_identifiant addObject:twitter];
     [_identifiant addObject:fb];
    
    _currentVal=0;
    
    _Username.text=[[_identifiant objectAtIndex:_currentVal]getuserName];
    _Password.text=[[_identifiant objectAtIndex:_currentVal]getpassWord];
    _Website.text=[[_identifiant objectAtIndex:_currentVal]getWeb];
    _Counter.text=[[_identifiant objectAtIndex:_currentVal]getsCount];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)incrementCounter:(id)sender {
    NSLog(@"This is increment counter button");
    // add one to count or use function
    [[_identifiant objectAtIndex:_currentVal]hauteCounter];
    
    _Counter.text=[[_identifiant objectAtIndex:_currentVal]getsCount];
  
    
}
- (IBAction)backwards:(id)sender {
    NSLog(@"This is backwards button");
    if (_currentVal==0) {return;}
    _currentVal-=1;
    
    _Username.text=[[_identifiant objectAtIndex:_currentVal]getuserName];
    _Password.text=[[_identifiant objectAtIndex:_currentVal]getpassWord];
    _Website.text=[[_identifiant objectAtIndex:_currentVal]getWeb];
    _Counter.text=[[_identifiant objectAtIndex:_currentVal]getsCount];
    
    //Website.text
      //iterate through the array
    // counter go + 1
}
- (IBAction)forwards:(id)sender {
     NSLog(@"This is forwards button");
    _currentVal+=1;
    if(_currentVal>=_identifiant.count){_currentVal=0;}
    
    _Username.text=[[_identifiant objectAtIndex:_currentVal]getuserName];
    _Password.text=[[_identifiant objectAtIndex:_currentVal]getpassWord];
    _Website.text=[[_identifiant objectAtIndex:_currentVal]getWeb];
    _Counter.text=[[_identifiant objectAtIndex:_currentVal]getsCount];
}

- (IBAction)AddEntry:(UIButton *)sender {
       NSLog(@"This is Add Entry button");
    
    SiteValue* newObject=[SiteValue siteNom:_Username.text andPassword:_Password.text andWebsite:_Website.text andCounter:0];
    
     [_identifiant addObject:newObject];
    _currentVal++;
    
    _Username.text=[[_identifiant objectAtIndex:_currentVal]getuserName];
    _Password.text=[[_identifiant objectAtIndex:_currentVal]getpassWord];
    _Website.text=[[_identifiant objectAtIndex:_currentVal]getWeb];
    _Counter.text=[[_identifiant objectAtIndex:_currentVal]getsCount];

    
   }

@end
