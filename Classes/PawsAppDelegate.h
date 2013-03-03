//
//  PawsAppDelegate.h
//  P.A.W.S.
//
//  Created by Keanu Kerr on 1/29/13.
//  Copyright 2013 West Shore J/S High School. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PawsAppDelegate : NSObject
 {
  
	UIWindow			* window;				// Only one window on iOS Devices
	UIViewController	* pawsViewController;	// The Paws View Controller - managing the PAWS View which will swap between the Edline View and the About View depending on the Info button
 }

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *pawsViewController;

@end
