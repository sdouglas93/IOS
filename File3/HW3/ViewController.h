//
//  ViewController.h
//  HW3
//
//  Created by Sareenah Douglas on 3/15/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>


#define kMeatComponent  0
#define kCheeseComponent 1
//#define kBreadComponent 2

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>{
    NSUInteger selectedRow;
    NSUInteger selectedRow1;
    NSString* str;
    NSString* ranStr;
    NSString *message1;
  
    

}
@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (nonatomic,strong) NSArray *Meats;
@property (nonatomic,strong) NSArray *Cheeses;
@property (nonatomic) NSUInteger selectedRow;
@property (nonatomic) NSUInteger selectedRow1;
@property (nonatomic) NSUInteger randomIndex;
@property (nonatomic) NSUInteger randInt;
@property (nonatomic) NSString *message1;



- (IBAction)MakeSandwhich:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *sandwhichLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component;
- (IBAction)showHint:(UIButton *)sender;
- (IBAction)checkIt;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

