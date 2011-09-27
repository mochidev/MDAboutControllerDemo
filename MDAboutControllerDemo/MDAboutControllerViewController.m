//
//  MDAboutControllerViewController.m
//  MDAboutController
//
//  Created by Dimitri Bouniol on 4/18/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//

#import "MDAboutControllerViewController.h"

@implementation MDAboutControllerViewController

- (void)dealloc
{
    [aboutController release];
    [navAboutController release];
    [transparentNavAboutController release];
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
    
    if (navAboutController.parentViewController == nil) {
        [navAboutController release];
        navAboutController = nil;
    }
    
    if (transparentNavAboutController.parentViewController == nil) {
        [transparentNavAboutController release];
        transparentNavAboutController = nil;
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

- (IBAction)showNavAbout:(id)sender
{
    
    // If the view controller doesn't already exist, create it
    if (!navAboutController) {
        navAboutController = [[UINavigationController alloc] init];
        
        navAboutController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        navAboutController.modalPresentationStyle = UIModalPresentationFormSheet;
        
        MDAboutController *aboutCont = [[MDAboutController alloc] init];
        
        aboutCont.backgroundColor = [UIColor groupTableViewBackgroundColor];
        //aboutCont.hasSimpleBackground = YES;
        
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(hideAbout:)];
        aboutCont.navigationItem.rightBarButtonItem = doneButton;
        [doneButton release];
        
        [navAboutController pushViewController:aboutCont animated:NO];
        [aboutCont release];
    }
    
    // Present to user!
    [self presentModalViewController:navAboutController animated:YES];
}

- (IBAction)showTransparentNavAbout:(id)sender
{
    
    // If the view controller doesn't already exist, create it
    if (!transparentNavAboutController) {
        transparentNavAboutController = [[UINavigationController alloc] init];
        
        transparentNavAboutController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        transparentNavAboutController.modalPresentationStyle = UIModalPresentationFormSheet;
        
        transparentNavAboutController.navigationBar.translucent = YES;
        
        MDAboutController *aboutCont = [[MDAboutController alloc] init];
        
//        aboutCont.backgroundColor = [UIColor groupTableViewBackgroundColor];
        //aboutCont.hasSimpleBackground = YES;
        
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(hideAbout:)];
        aboutCont.navigationItem.rightBarButtonItem = doneButton;
        [doneButton release];
        
        [transparentNavAboutController pushViewController:aboutCont animated:NO];
        [aboutCont release];
    }
    
    // Present to user!
    [self presentModalViewController:transparentNavAboutController animated:YES];
}
         
- (IBAction)hideAbout:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
