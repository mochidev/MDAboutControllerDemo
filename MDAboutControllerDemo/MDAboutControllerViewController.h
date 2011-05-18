//
//  MDAboutControllerViewController.h
//  MDAboutController
//
//  Created by Dimitri Bouniol on 4/18/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MDAboutController;

@interface MDAboutControllerViewController : UIViewController {
    MDAboutController *aboutController;
}

- (IBAction)showAbout:(id)sender;

@end
