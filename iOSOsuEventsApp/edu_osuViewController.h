//
//  edu_osuViewController.h
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"

@interface edu_osuViewController : UIViewController{
    IBOutlet UIButton *recoEvents;
    IBOutlet UIButton *bookmarkedEvents;
    IBOutlet UIButton *allEvents;
    IBOutlet UIButton *friendsEvents;
}

@property(nonatomic, retain) IBOutlet UIButton *recoEvents;
@property(nonatomic, retain) IBOutlet UIButton *bookmarkedEvents;
@property(nonatomic, retain) IBOutlet UIButton *allEvents;
@property(nonatomic, retain) IBOutlet UIButton *friendsEvents;


-(IBAction)clickedRecoEvents:(id)sender;
-(IBAction)clickedBookmarkedEvents:(id)sender;
-(IBAction)clickedAllEvents:(id)sender;
-(IBAction)clickedFriendsEvents:(id)sender;

@end
