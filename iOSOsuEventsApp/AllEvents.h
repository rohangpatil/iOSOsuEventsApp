//
//  AllEvents.h
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"

@interface AllEvents : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tableView;
    NSMutableArray *eventsArray;
}

@property (nonatomic,retain) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *eventsArray;

@end
