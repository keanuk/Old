//
//  MyGoogleAppDelegate.h
//  MyGoogle
//
//  Created by apple on 10/12/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface MyGoogleAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet RootViewController *rootViewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) RootViewController *rootViewController;

@end

