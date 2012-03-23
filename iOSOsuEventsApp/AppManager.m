//
//  AppManager.m
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import "AppManager.h"

@implementation AppManager


@synthesize urlList;
@synthesize sessionObj;

#pragma mark Singleton Methods
+(id) sharedManager{
    static id sharedManager = nil;
    @synchronized(self){
        if(sharedManager == nil)
            sharedManager = [[self alloc] init];
        return sharedManager;
    }
}

-(id) init {
    if(self = [super init]){
        urlList = [[NSMutableDictionary alloc] init];
        sessionObj = [[NSMutableDictionary alloc] init];
        
        
        /*
         *
         *Dummy session variables
         *
         */
        NSString *userId = @"0";
        NSString *fbToken=@"JUNK";
        /*
         *
         *All session objects here
         *
         */
        
        [sessionObj setObject:userId forKey:@"userId"];
        [sessionObj setObject:fbToken forKey:@"fbToken"];
                
        
        /*
         *
         *Add all the URLs here.
         *
         */
        NSString *baseUrl = @"http://5.130.180.248:4567";
        
        [urlList setObject:[NSString stringWithFormat:@"%@%@",baseUrl,@"/new_user"] forKey:@"newUserUrl"];
        [urlList setObject:baseUrl forKey:@"baseUrl"];
        
        int numberOfEvents = 10;
        
        NSString *numEvents = @"?num_events=";
        NSString *getEvents = @"get_events";
        
        NSString *getAllEventsUrl= [NSString stringWithFormat:@"%@/%@%@%d",baseUrl,getEvents,numEvents,numberOfEvents];
        
        [urlList setObject:getAllEventsUrl forKey:@"getAllEvents"];
        
        
    }
    return self;
}

-(NSString*) getUrlForKey: (NSString*) key
{
    return [urlList objectForKey:key];
}

-(void) dealloc{
    
}

@end
