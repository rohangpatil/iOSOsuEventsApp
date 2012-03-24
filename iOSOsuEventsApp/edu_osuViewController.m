//
//  edu_osuViewController.m
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import "edu_osuViewController.h"
#import "AllEvents.h"


@implementation edu_osuViewController

@synthesize recoEvents,friendsEvents,allEvents,bookmarkedEvents;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
//    NSURL *url = [NSURL URLWithString:@"http://5.130.180.248:4567/get_events?num_events=5"];
//    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
//    [request startSynchronous];
//    NSString *response = [request responseString];
//    NSError *error;
//    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[response dataUsingEncoding:   NSUTF8StringEncoding] options:kNilOptions error:&error];
//    NSDictionary *resultObj = [json objectForKey:@"result"];
//    
//    NSArray *data = [resultObj objectForKey:@"data"];
//    
//    for(NSDictionary *eventDetails in data){
//        NSString *firstName = [eventDetails objectForKey:@"name"];
//        NSString *lastName = [eventDetails objectForKey:@"location"];
//        NSString *fullName = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
//        // NSLog(@"Full Name of %@ is %@ %@",studentId,firstName,lastName);
//        NSLog(@"%@",fullName);
//    }
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"grunge.jpg"]];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



/*
 * Implementing the Button Click functions
 *
 *
 */

-(IBAction)clickedAllEvents:(id)sender{
    AllEvents *nextView = [[AllEvents alloc] initWithNibName:@"AllEvents" bundle:nil];
    [self.view addSubview:nextView.view];
}

-(IBAction)clickedBookmarkedEvents:(id)sender{
    
}

-(IBAction)clickedFriendsEvents:(id)sender{
    
}

-(IBAction)clickedRecoEvents:(id)sender{
    
}



@end
