//
//  AppManager.h
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppManager : NSObject{
    NSMutableDictionary *urlList;
    NSMutableDictionary *sessionObj;
}

@property (nonatomic, retain) NSMutableDictionary *urlList;
@property (nonatomic, retain) NSMutableDictionary *sessionObj;

+ (id)sharedManager;
- (NSString*) getUrlForKey: (NSString*) key;
@end