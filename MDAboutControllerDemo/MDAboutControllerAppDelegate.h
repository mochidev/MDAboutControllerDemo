//
//  MDAboutControllerAppDelegate.h
//  MDAboutController
//
//  Created by Dimitri Bouniol on 4/18/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MDAboutControllerViewController;

@interface MDAboutControllerAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MDAboutControllerViewController *viewController;

@end
