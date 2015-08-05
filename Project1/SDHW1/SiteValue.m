//
//  SiteValue.m
//  SDHW1
//
//  Created by Sareenah Douglas on 2/20/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue
@synthesize counter,userName,passWord;


//create getters and setters
// counter
-(void) setCounter { counter=0;}

-(int) getCounter{ return counter;}

// user name
-(void) setuserName: (NSString*) name {userName= name;}

-(NSString*) getuserName{ return userName;}

// password
-(void) setPassWord:(NSString *)pw {passWord = pw;}

-(NSString*) getpassWord{ return passWord;}


// print pretty format
-(void) primerValue{
    NSLog(@"The username is : %@, The password is: %@, The counter is: %i",userName,passWord,counter);
}

//increment the Count variable of a SiteValue object
//create a method to increment the counter
-(void) hauteCounter{
    self.counter=counter+1;
}

-(SiteValue*) initSets:(NSString*)username andPassword:(NSString*)password andCounter: (int)counter{
    self=[super init];
    if(self){
        [self setuserName:username];
        [self setPassWord:password];
        [self setCounter];
        
    }
    return self;
    
}

+ (SiteValue*) siteNom:(NSString*)username andPassword: (NSString*)password andCounter:(int)counter{
    
    SiteValue *siteValue =[[SiteValue alloc]init];
    
    siteValue=[siteValue initSets:username andPassword:password andCounter:counter];
    
    return siteValue;
    

}


@end
