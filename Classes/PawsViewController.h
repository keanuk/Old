//
//  WebViewController.h
//  PAWS
//
//  Created by Keanu Kerr on 13-3-2.
//
//

#import <UIKit/UIKit.h>

@class EdlineViewController;
@class AboutViewController;


// Instance variables for the PawsViewController class - our main window. It will hold two "Views", one for our Edline screen and one for our "About" screen
@interface PawsViewController : UIViewController
 {
	UIButton *infoButton;							// An "i" button at the lower right
	EdlineViewController *edlineViewController;		// Our main web page view showing Edline.net
	AboutViewController *aboutViewController;		// Our "about screen" brought up when the "i" is touched
	UINavigationBar *aboutNavigationBar;			// The "back" bar on the about screen
 }


// This is automatic setup of those "instance" variables
@property (nonatomic, retain) IBOutlet UIButton *infoButton;
@property (nonatomic, retain) EdlineViewController *edlineViewController;
@property (nonatomic, retain) AboutViewController *aboutViewController;
@property (nonatomic, retain) UINavigationBar *aboutNavigationBar;


@end
