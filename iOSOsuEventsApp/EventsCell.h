//
//  EventsCell.h
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsCell : UITableViewCell
{
    UILabel *eventTitle;
    UIImageView *catImage;
    UILabel *dateLable;
    UILabel *locationLable;
    UIView *inView;
}

@property (nonatomic,retain) IBOutlet UILabel *eventTitle;
@property (nonatomic,retain) IBOutlet UILabel *catLable;
@property (nonatomic,retain) IBOutlet UILabel *locationLable;
@property (nonatomic,retain) IBOutlet UIView *inView;

@end
