//
//  Event.m
//  iOSOsuEventsApp
//
//  Created by Vineet Nair on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import "Event.h"

@implementation Event
@synthesize eventId , eventName , startDate , endDate , contactEMail , contactName , contactNumber , category , eventType , eventLink , detailsLink , location , description;

- (id)initWithEventId:(NSString*)eventId1 eventName:(NSString*)eventName1 startDate:(NSDate*)startDate1 endDate:(NSDate*)endDate1 contactEMail:(NSString*)contactEMail1 contactName:(NSString*)contactName1 contactNumber:(NSString*)contactNumber1 category:(NSString*)category1 eventType:(NSString*)eventType1 eventLink:(NSString*)eventLink1 detailsLink:(NSString*)detailsLink1 location:(NSString*)location1 description:(NSString*)description1{
    
    self.eventId = eventId1;
    self.eventName = eventName1;
    self.startDate = startDate1;
    self.endDate = endDate1;
    self.contactEMail = contactEMail1;
    self.contactName = contactName1;
    self.contactNumber = contactNumber1;
    self.category = category1;
    self.eventType = eventType1;
    self.eventLink = eventLink1;
    self.detailsLink = detailsLink1;
    self.location = location1;
    self.description = description1;
    
    return self;
}
@end
