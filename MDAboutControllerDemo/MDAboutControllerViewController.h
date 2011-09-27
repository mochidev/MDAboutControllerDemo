//
//  MDAboutControllerViewController.h
//  MDAboutController
//
//  Created by Dimitri Bouniol on 4/18/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDACClasses.h"

@interface MDAboutControllerViewController : UIViewController {
    MDAboutController *aboutController;
    UINavigationController *navAboutController;
    UINavigationController *transparentNavAboutController;
}

- (IBAction)showAbout:(id)sender;
- (IBAction)showNavAbout:(id)sender;
- (IBAction)showTransparentNavAbout:(id)sender;
- (IBAction)hideAbout:(id)sender;

@end
