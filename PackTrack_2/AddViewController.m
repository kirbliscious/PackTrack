//
//  AddViewController.m
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import "AddViewController.h"

@implementation AddViewController
@synthesize navigation;

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
    //PACKTRACK ///////////////////////////////
    ///////////////////////////////////////////////////////////////////// Background
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.jpeg"]];
    self.view.backgroundColor = background;
    
    
    /////////////////////////////////////////////////////////////////////

    
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
