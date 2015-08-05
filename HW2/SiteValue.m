//
//  SiteValue.m
//  HW2
//
//  Created by Sareenah Douglas on 3/4/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"
@implementation SiteValue
@synthesize counter,userName,passWord,webSite;

// creating SiteValue.m to be usuable with NSMutable Arrays
// creating setters
-(void) setuserName: (NSString *) name{ userName=name;}
-(NSString*) getuserName {return userName;}

-(void) setPassWord: (NSString *) pw {passWord=pw;}
-(NSString*) getpassWord{ return passWord;}


-(void) setCounter {counter=0;}
-(int)  getCounter{ return counter;}

-(void) setwebSite: (NSString *) site{ webSite=site;}
-(NSString*) getWeb {return webSite;}

-(NSString *) getsCount{ return [NSString stringWithFormat:@"%d",counter];}

-(void) hauteCounter{self.counter=counter+1;}


+ (SiteValue*) siteNom:(NSString *) username andPassword: (NSString*)password andWebsite: (NSString*) website andCounter:(int)counter{
    
    SiteValue *siteValue =[[SiteValue alloc]init];
    
    siteValue=[siteValue initSets:username andPassword:password andWebsite:website andCounter:counter];
    
    return siteValue;
    
}

-(SiteValue*) initSets:(NSString *) username andPassword:(NSString*)password andWebsite: (NSString*)site andCounter: (int)count{
    self=[super init];
    if(self){
        [self setuserName:username];
        [self setwebSite:site];
        [self setPassWord:password];
        [self setCounter:count];
        
    }
    return self;
    
}


-(void) aujoute:(NSString *) username andPassword:(NSString*) password andWebsite: (NSString*) website andCounter: (int) count andArray:(NSMutableArray *) array{
    
    
    SiteValue * array1=[SiteValue siteNom:username andPassword: password andWebsite:website andCounter:count];
    
    [array addObject:array1];
    
}

void hauteCounterAll(NSMutableArray * array) {for(SiteValue *count in array){[ count hauteCounter];}
}




@end





