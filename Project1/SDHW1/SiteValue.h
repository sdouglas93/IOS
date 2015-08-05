//
//  SiteValue.h
//  SDHW1
//
//  Created by Sareenah Douglas on 2/20/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject
@property (nonatomic, retain) NSString* passWord;
@property id userName;
@property int counter;

+ (SiteValue*) siteNom:(NSString*)username andPassword: (NSString*)password andCounter:(int)counter;

-(SiteValue*) initSets:(NSString*)username andPassword:(NSString*)password andCounter: (int)counter;

-(void) setCounter;
-(int) counter;

-(NSString*) getuserName;
-(NSString*) getpassWord;

-(void) setPassWord:(NSString *)pw;
-(void) setuserName: (NSString*) name;

-(void) hauteCounter;
-(void) primerValue;




@end
