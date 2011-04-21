MDAboutController Demo
======================

Purpose
-------

MDAboutController is a complete About UIViewController package for iOS apps.
It automatically fetches info from your Info.plist, and also populates credits
from Credits.plist. This repository serves to demonstrate and test the
MDAboutController class. Please visit the
[MDAboutController](https://github.com/mochidev/MDAboutController) repository
for the actual code :)

Installation
------------

    $ git clone https://github.com/mochidev/MDAboutControllerDemo
    $ git submodule init
    $ git submodule update

To include it into your projects either download the
[source](https://github.com/mochidev/MDAboutController), or run the following
on your git repo:

    $ cd <your_repo>
    $ git submodule add git@github.com:mochidev/MDAboutController.git <local_subpath>

This will allow you to update it at anytime by running `$ git submodule update`.

Usage
-----

Simply add the
[MDAboutController](https://github.com/mochidev/MDAboutController) submodule to
your project, and show the controller via UIViewController's
presentModalViewController:animated: method:

    // Defined in interface
    MDAboutController *aboutController;
    - (IBAction)showAbout:(id)sender;
    
    // Implemented in implementation of a UIViewController subclass
    - (IBAction)showAbout:(id)sender
    {
        if (!aboutController) {
            aboutController = [[MDAboutController alloc] init];
        }
    
        [self presentModalViewController:aboutController animated:YES];
    }
    
    - (void)dealloc
    {
        [aboutController release];
        [super release];
    }



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

Also, it'd be super awesome if you left in the credit line generated
automatically by the code that links back to this page :)