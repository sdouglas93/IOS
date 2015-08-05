//
//  SiteValue.h
//  HW2
//
//  Created by Sareenah Douglas on 3/4/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#ifndef HW2_SiteValue_h
#define HW2_SiteValue_h


#endif
@interface SiteValue : NSObject{
    NSString * userName;
    NSString * passWord;
    NSString * webSite;
    int Counter;
    
    
}
@property (nonatomic, retain) NSString* passWord;
@property (nonatomic, retain) NSString* webSite;
@property id userName;
@property int counter;

-(void) setuserName: (NSString *) name;
-(NSString*) getuserName;

-(void) setPassWord: (NSString *) pw;
-(NSString*) getpassWord;

-(void) setCounter;
-(int)  getCounter;

-(void) setwebSite: (NSString *) site;
-(NSString*) getWeb;

-(NSString *) getsCount;

-(void) hauteCounter;
void hauteCounterAll(NSMutableArray * array);

-(void) aujoute:(NSString *) username andPassword:(NSString*) password andWebsite: (NSString*) website andCounter: (int) count andArray:(NSMutableArray *) array;



+ (SiteValue*) siteNom:(NSString *) username andPassword: (NSString*)password andWebsite: (NSString*) website andCounter:(int)counter;
-(SiteValue*) initSets:(NSString *) username andPassword:(NSString*)password andWebsite: (NSString*)site andCounter: (int)count;



@end
