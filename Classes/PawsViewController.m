//
//  PawsViewController.m
//  PAWS
//
//  Created by Keanu Kerr on 13-3-2.
//

//	This Controller manages the root controller found in MainWindow.xib - it loads the EdlineView into the View it controls
//

#import "PawsViewController.h"
#import "EdlineViewController.h"
#import "AboutViewController.h"


@implementation PawsViewController


// This does some automatic code setup for these instance variables (see .h file)
@synthesize infoButton;
@synthesize edlineViewController;
@synthesize aboutNavigationBar;
@synthesize aboutViewController;


- (void)viewDidLoad
{
    // Insert EdlineView into the space given use by the Root
	edlineViewController = [[EdlineViewController alloc] initWithNibName:@"EdlineView" bundle:nil];
	if (edlineViewController) [self.view insertSubview:edlineViewController.view belowSubview:infoButton];
}


- (void)loadaboutViewController
 {
	aboutViewController = [[AboutViewController alloc] initWithNibName:@"AboutView" bundle:nil];

	if (aboutViewController)
	 {
        // Set up the navigation bar
        UINavigationBar *aNavigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, 44.0)];
        aNavigationBar.barStyle = UIBarStyleBlackOpaque;
        self.aboutNavigationBar = aNavigationBar;
        [aNavigationBar release];
        
        UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(toggleView)];
        UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:@"P.A.W.S."];
        navigationItem.rightBarButtonItem = buttonItem;
        [aboutNavigationBar pushNavigationItem:navigationItem animated:NO];
        [navigationItem release];
        [buttonItem release];
	 }
 }


- (IBAction)toggleView
 {
	/*
	 This method is called when the info or Done button is pressed.
	 It flips the displayed view from the main view to the about view and vice-versa.
	 */
	if (!aboutViewController)
		[self loadaboutViewController];
	
	UIView *edlineView = edlineViewController.view;
	UIView *aboutView = aboutViewController.view;
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1];
	[UIView setAnimationTransition:([edlineView superview] ? UIViewAnimationTransitionFlipFromRight : UIViewAnimationTransitionFlipFromLeft) forView:self.view cache:YES];
	
	if ([edlineView superview] != nil)
	 {
		[aboutViewController viewWillAppear:YES];
		[edlineViewController viewWillDisappear:YES];
		[edlineView removeFromSuperview];
        [infoButton removeFromSuperview];
		[self.view addSubview:aboutView];
		[self.view insertSubview:aboutNavigationBar aboveSubview:aboutView];
		[edlineViewController viewDidDisappear:YES];
		[aboutViewController viewDidAppear:YES];
		
	 }
    else
	 {
		[edlineViewController viewWillAppear:YES];
		[aboutViewController viewWillDisappear:YES];
		[aboutView removeFromSuperview];
		[aboutNavigationBar removeFromSuperview];
		[self.view addSubview:edlineView];
		[self.view insertSubview:infoButton aboveSubview:edlineViewController.view];
		[aboutViewController viewDidDisappear:YES];
		[edlineViewController viewDidAppear:YES];
	 }
	[UIView commitAnimations];
 }



// This is the iOS 5.x and below method of always rotating
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation { return YES; }
// These are for iOS 6
- (BOOL)shouldAutorotate:(UIInterfaceOrientation)interfaceOrientation { return YES; }
- (NSUInteger)supportedInterfaceOrientations { return UIInterfaceOrientationMaskAll; }



- (void)didReceiveMemoryWarning
 {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
 }


- (void)dealloc
 {
	[infoButton release];
	[edlineViewController release];
	[aboutNavigationBar release];
	[aboutViewController release];
	[super dealloc];
 }

@end
