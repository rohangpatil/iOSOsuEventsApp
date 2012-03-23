//
//  Event.h
//  iOSOsuEventsApp
//
//  Created by Vineet Nair on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Event : NSObject
@property (nonatomic , retain) NSString* eventId;
@property (nonatomic , retain) NSString* eventName;
@property (nonatomic , retain) NSDate* startDate;
@property (nonatomic , retain) NSDate* endDate;
@property (nonatomic , retain) NSString* contactEMail;
@property (nonatomic , retain) NSString* contactName;
@property (nonatomic , retain) NSString* contactNumber;
@property (nonatomic , retain) NSString* category;
@property (nonatomic , retain) NSString* eventType;
@property (nonatomic , retain) NSString* eventLink;
@property (nonatomic , retain) NSString* detailsLink;
@property (nonatomic , retain) NSString* location;
@property (nonatomic , retain) NSString* description;

- (id)initWithEventId:(NSString*)eventId eventName:(NSString*)eventName startDate:(NSDate*)startDate endDate:(NSDate*)endDate contactEMail:(NSString*)contactEMail contactName:(NSString*)contactName contactNumber:(NSString*)contactNumber category:(NSString*)category eventType:(NSString*)eventType eventLink:(NSString*)eventLink detailsLink:(NSString*)detailsLink location:(NSString*)location description:(NSString*)description;                                                                         

@end
