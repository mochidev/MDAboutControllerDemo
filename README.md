MDAboutController Demo
======================

![Screenshot](https://github.com/mochidev/MDAboutControllerDemo/raw/master/Artwork/Screenshot.png)

Purpose
-------

MDAboutController is a complete About UIViewController package for iOS apps.
It automatically fetches info from your Info.plist, and also populates credits
from Credits.plist. This repository serves to demonstrate and test the
MDAboutController class. Please visit the
[MDAboutController](https://github.com/mochidev/MDAboutController) repository
for the actual code :)

MDAboutController is both iPhone (Portrait and Landscape) and iPad compatible,
retrieves the app's name and version from your Info.plist, and even chooses the
most appropriate icon for the project depending on the device and your choices
in Info.plist. Finally, the controller allows you to add credits, links, images,
and text via a Credits.plist file (examples below).

Installation
------------

```bash
$ git clone https://github.com/mochidev/MDAboutControllerDemo --recursive
```

To include it into your own projects either download the
[source](https://github.com/mochidev/MDAboutController), or run the following
on your git repo:

```bash
$ cd <your_repo>
$ git submodule add git@github.com:mochidev/MDAboutController.git <local_subpath>
```

This will allow you to update it at anytime by running `$ git submodule update`.

Usage
-----

Simply add the
[MDAboutController](https://github.com/mochidev/MDAboutController) submodule to
your project, and show the controller via UIViewController's
`presentModalViewController:animated:` method.

In your interface, define the following instance variable and method:

```obj-c
// Defined in interface
MDAboutController *aboutController;
- (IBAction)showAbout:(id)sender;
```

Then, in your UIViewController subclass implementation, implement the following methods:

```obj-c
// Implemented in implementation of a UIViewController subclass
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
```

Alternatively, if you create the view controller as a part of a navigation controller stack, it will support loading `UIWebView`s and other specified view controllers. This can be easily done by using the `MDAboutNavigationController` class, in the same way as `MDAboutController` was used above.

If you would like to include Email support directly in your app, please add the `MessageUI` framework to your project, otherwise a new message will be created in Mail.app. The subject will be populated with "App Name 1.0 (55) Support" automatically.

Credits.plist
---

To get the most out of MDAboutViewController, be sure to include a `Credits.plist` file in your projects resources. This will allow you to add credits, links, images, and text to your about screen. The property list must be configured as an array of dictionaries, with each dictionary representing one section on the about screen.

Each dictionary should have a `Type` key of type string, which can be a `List` for a group of links or credits, `Text` for blocks of text or copyright strings, or `Image` for images.

`Type == List` Keys:

- `Items` - an array of dictionaries with mandatory key `Name` and optional keys `Role` and `Link`, that descripe the rows:
  - `Role` - an optional string shown in lower case in front of the `Name` string.
  - `Link` - an optional URL string to link to if the text is tapped.
  - `Email` - an optional Email string that will open an email panel.
  - `EmailName` - an optional name to use in the To: field of the email panel.
  - `Controller` - an optional controller to push on a navigation stack.
- `Title` - an optional title string to include above the group.

`Type == Text` Keys:

- `Text` - the text to represent.
- `Link` - an optional URL string to link to if the text is tapped.
- `Size` - an optional font size of type number. The default is 13pt.
- `Alignment` - an optional string representing the text alignment. Can be either `Left`, `Right`, or the default, `Center`.

`Type == Image` Keys:

- `Image` - the name of the image file, much like it is referenced from `UIImage`'s `imageNamed:` method.

To Do
---

- Code based customizations
  - Better iOS-like presentation;
  - Styles (As a seperate configurable class, defining all images, colors, etc...?)
- App portfolio for more info on other apps
- Images in lists

Coding Style Guidelines
-----------------------

Please see http://webkit.org/coding/coding-style.html

License
-------

Copyright (c) 2011 Dimitri Bouniol, Mochi Development, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

EleMints, the EleMints Icon, Mochi Dev, and the Mochi Development logo are
copyright Mochi Development, Inc.

Also, it'd be super awesome if you left in the credit line generated
automatically by the code that links back to this page :)

Credits
-------

- Created by [Dimitri Bouniol](http://twitter.com/dimitribouniol) for [Mochi Development, Inc.](http://mochidev.com/)
- Contributed to by [Doron Katz](http://doronkatz.com) of [DoronKatz.com](http://doronkatz.com)
