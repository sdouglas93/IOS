//
//  ViewController.m
//  HW3
//
//  Created by Sareenah Douglas on 3/15/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize Meats,Cheeses,picker,randomIndex,randInt,selectedRow,selectedRow1,message1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Meats= @[@"The Ace of ",@"The Two of",@"The Three of",@"The Four of",@"The Five of",@"The Six of",@"The Seven of",@"The Eight of",@"The Nine of"];
    Cheeses=@[@"♥",@"♦",@"♣",@"♠"];

    
    //Meats= [Meats sortedArrayUsingSelector:@selector(compare:)];
    Cheeses= [Cheeses sortedArrayUsingSelector:@selector(compare:)];
  
    
    //get the random index
    randomIndex = arc4random() % [Meats count];
    randInt = arc4random() % [Cheeses count];

    // get random index number
    NSLog(@"randomIndex %i and %i", randomIndex,randInt);
    
  str=[Meats objectAtIndex:randomIndex];
  ranStr=[Cheeses objectAtIndex:randInt];
    
    //print the string
    NSLog(@"%@ %@",str,ranStr);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)MakeSandwhich:(UIButton *)sender {
    NSInteger meatsRow=[picker selectedRowInComponent:kMeatComponent];
    NSInteger cheesesRow=[picker selectedRowInComponent:kCheeseComponent];
    //NSInteger breadsRow=[picker selectedRowInComponent:kBreadComponent];
    
    NSString* meats=Meats[meatsRow];
    NSString* cheese=Meats[cheesesRow];
    //NSString* breads=Meats[breadsRow];
    
    NSString *msg= [[NSString alloc]initWithFormat:@"%@ %@",meats,cheese];
    
    _sandwhichLabel.text=msg;

}

#pragma mark- UIPickerView DataSource and Delegate Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView{
    return 2;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if(component == kMeatComponent)
        return [Meats count];
    else
        return [Cheeses count];
    
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    if (component == kMeatComponent) {
        return Meats[row];
    } else {
        return Cheeses[row];
    }
    
   
}

// try to get the selectedRow
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedRow=[pickerView selectedRowInComponent:0];
    selectedRow1=[pickerView selectedRowInComponent:1];
    NSLog(@"row selected is %d and %d", selectedRow,selectedRow1);
   message1= [NSString stringWithFormat:@"%d %d", selectedRow, selectedRow1];
    
       int wrongGuess=0;
    
    if((selectedRow == randomIndex) && (selectedRow1 == randInt)){
        NSLog(@"You Won");
        NSLog(@"You made %i number of guesses",wrongGuess++);
        wrongGuess++;
    }else{
        NSLog(@"You Lose");
        NSLog(@"You made %i number of guesses",wrongGuess++);
        wrongGuess++;
    }
    
}

- (IBAction)showHint:(UIButton *)sender {
    
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Hint" message:@"Would you like a hint?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Show Me", nil];
    
    [alert show];
}

- (void) showAlertWithTitle: (NSString*) title message: (NSString*) message
{
    UIAlertView* alertTrois= [[UIAlertView alloc] initWithTitle: title message: message
                                                   delegate: NULL cancelButtonTitle: @"OK" otherButtonTitles: NULL];
    [alertTrois show];
    
}

- (IBAction)checkIt:(UIButton *)sender {

    
    NSInteger row, row1;
    NSString *getRow;
    NSString *chercheRow1;
    NSString *select;
    
    row = [picker selectedRowInComponent:0];
    row1 = [picker selectedRowInComponent:1];
    getRow = [Meats objectAtIndex:row];
    chercheRow1 = [Cheeses objectAtIndex:row];
    select = [NSString stringWithFormat:@"You chose the %@.%@", getRow, chercheRow1];
    
    int wrongGuess=0;
    
    

    
    if((selectedRow == randomIndex) && (selectedRow1 == randInt)){
         _outputLabel.text=@"You Won";
        _label1.text=select;
        wrongGuess++;
    }else{
         _outputLabel.text=@"You Lose";
        _label1.text=select;
        wrongGuess++;
    }
    
    
    

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==1){
    
        UIAlertView *alertTwo=[[UIAlertView alloc] initWithTitle:@"Answer" message:[NSString stringWithFormat:@"%@ %@",str,ranStr] delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    
        [alertTwo show];
    }
    
    
    

}


@end
