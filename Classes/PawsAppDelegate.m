//
//  MyGoogleAppDelegate.m
//  MyGoogle
//
//  Created by apple on 10/12/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import "MyGoogleAppDelegate.h"
#import "RootViewController.h"

@implementation MyGoogleAppDelegate


@synthesize window;
@synthesize rootViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	[window addSubview:[rootViewController view]];
	[window makeKeyAndVisible];
}


- (void)dealloc {
	[rootViewController release];
	[window release];
	[super dealloc];
}

@end
