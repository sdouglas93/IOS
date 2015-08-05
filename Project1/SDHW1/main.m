//
//  main.m
//  SDHW1
//
//  Created by Sareenah Douglas on 2/19/15.
//  Copyright (c) 2015 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

NSArray *cles;
NSMutableDictionary *identifiant;

void dictionaire(){
    cles=[identifiant allKeys];
    for(NSString *lesCles in cles){ NSLog(@"The site is: %@", lesCles); [[identifiant objectForKey:lesCles] primerValue];}
    NSLog(@" ");
    printf("\n");
    
}

bool duplicatePages(NSString *webpage){
    BOOL duplicate=NO;
    
    cles= [identifiant allKeys];
    for (NSString *lesCles in cles)
    {
        if(webpage == lesCles)
        {
            NSLog(@"We have found a duplicate and it is  %@ \t",webpage);
            [identifiant removeObjectForKey:webpage];
            NSLog(@"The webpage %@ was removed because there was a duplicate",webpage);
            printf("\n");
            duplicate= YES;
           
            break;
        }
        else{ duplicate = NO;}
    }
    return duplicate;
}

void aujoute(NSString *webpage, NSString *userNom, NSString *code,int counter){
    
    if(duplicatePages(webpage)== NO)
    {
    SiteValue *nouveauLigne =[SiteValue siteNom:userNom andPassword:code andCounter:counter];
    [identifiant setObject:nouveauLigne forKey:webpage];
    }
}

void increase(){
    for(NSString *cles in identifiant){ [[identifiant objectForKey:cles] hauteCounter];}
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        identifiant=[[NSMutableDictionary alloc] init];
        
        // checking if the duplicates work
        aujoute(@"Yahoo",@"Becky",@"loveyoumucho",0);
        
        aujoute(@"Hotmail",@"Ray",@"bitemeBro",0);
        aujoute(@"AOL",@"Reagan",@"winnersCircle",0);
        aujoute(@"Yahoo",@"Becky",@"loveyoumucho",0);
        aujoute(@"Twitter",@"Bob",@"getmoney",0);
        aujoute(@"Facebook",@"Sally",@"allIdoiseat",0);
        aujoute(@"Instagram",@"William",@"comeAtMe",0);
        aujoute(@"BYU",@"Josh",@"loveyoumucho",0);
        
        dictionaire();
        
         [identifiant removeObjectForKey:@"Yahoo"];
         [identifiant removeObjectForKey:@"AOL"];
         [identifiant removeObjectForKey:@"BYU"];
        
        dictionaire();
        
        increase();
        //increase();
        //increase();
        
        dictionaire();
    }
    return 0;
}
