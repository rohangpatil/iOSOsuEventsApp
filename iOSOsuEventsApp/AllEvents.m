//
//  AllEvents.m
//  iOSOsuEventsApp
//
//  Created by Rohan Patil on 3/23/12.
//  Copyright (c) 2012 The Ohio State University. All rights reserved.
//

#import "AllEvents.h"
#import "AppManager.h"
#import "Event.h"

@implementation AllEvents

@synthesize tableView,eventsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppManager *sharedManager = [AppManager sharedManager];
    NSURL *getAllEvents = [NSURL URLWithString:[sharedManager getUrlForKey:@"getAllEvents"]];
    
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:getAllEvents];
    [request startSynchronous];
    NSString *response = [request responseString];
    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[response dataUsingEncoding:   NSUTF8StringEncoding] options:kNilOptions error:&error];
    NSDictionary *resultObj = [json objectForKey:@"result"];
    
    NSArray *data = [resultObj objectForKey:@"data"];
    NSMutableArray *eventsTempArr = [[NSMutableArray alloc]init];
    for(NSDictionary *eventDetails in data){
        NSString *eventId = [eventDetails objectForKey:@"id"];
        NSString *eventName = [eventDetails objectForKey:@"name"];
        NSString *location = [eventDetails objectForKey:@"location"];
        NSString *category = [eventDetails objectForKey:@"category"];
        NSDate *startDate = [eventDetails objectForKey:@"start_date"];
        NSDate *endDate = [eventDetails objectForKey:@"end_date"];
        Event *tempEvent = [[Event alloc] init];
        tempEvent.eventId=eventId;
        tempEvent.eventName=eventName;
        tempEvent.category=category;
        tempEvent.location=location;
        tempEvent.endDate=endDate;
        tempEvent.startDate=startDate;
        [eventsTempArr addObject:tempEvent];
    }
    [self setEventsArray:eventsTempArr];
    eventsTempArr=nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    [super viewWillAppear:animated];
	
    [[self tableView] reloadData];
	
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    NSInteger rows = [[self eventsArray] count];
	
    NSLog(@"rows is: %d", rows);
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
    return rows;
}

-(UITableViewCell* )tableView:(UITableView *)tableViewLocal cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    Event *eventForCell = [[self eventsArray] objectAtIndex:[indexPath row]];
	
    static NSString *CellIdentifier = @"CellIdentifier";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
	
    // Do anything that COULD be different on each cell here.  Text, images, etc.
    cell.textLabel.text=eventForCell.eventName;
    cell.detailTextLabel.text=[NSString stringWithFormat:@"Location: %@",eventForCell.location];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.lineBreakMode=UILineBreakModeWordWrap;
    cell.textLabel.numberOfLines=0;
    if(![eventForCell.category compare:@"category 1"]){
        cell.imageView.image = [UIImage imageNamed:@"OOSL.png"];
    }
	cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor=[UIColor grayColor];
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
    return cell;
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
