//
//  MDAboutControllerViewController.m
//  MDAboutController
//
//  Created by Dimitri Bouniol on 4/18/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//

#import "MDAboutControllerViewController.h"
#import "MDAboutController.h"

@implementation MDAboutControllerViewController

- (void)dealloc
{
    [aboutController release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Check if the about controller is being shown
    if (aboutController.parentViewController == nil) {
        // Release and set to nil, so we can recreate it if we need to
        [aboutController release];
        aboutController = nil;
    }
}

- (IBAction)showAbout:(id)sender
{
    // If the view controller doesn't already exist, create it
    if (!aboutController) {
        aboutController = [[MDAboutController alloc] init];
    }
    
    // Present to user!
    [self presentModalViewController:aboutController animated:YES];
}

#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
