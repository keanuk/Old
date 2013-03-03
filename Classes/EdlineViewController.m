//
//  EdlineViewController.h
//  PAWS
//
//  Created by Keanu Kerr on 13-3-2.
//
//

#import "EdlineViewController.h"
#import "EdlineView.h"

@implementation EdlineViewController

@synthesize edlineView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
 {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	 {
		// Custom initialization
	 }
	return self;
 }


- (void)viewDidLoad
 {
	if (!edlineView)
		return;

	[self didRotateFromInterfaceOrientation:0];
	
	// set userInteractionEnabled to true so the user can click links
	edlineView.userInteractionEnabled = true;

	//	 [edlineView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"https://www.edline.net/post/InterstitialLogin.page"]]];
	[edlineView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"https://www.edline.net/"]]];
 }


-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
	if (fromInterfaceOrientation) [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];

	// Resize to match window
	UIWindow				* frontWindow = [[[UIApplication sharedApplication] windows] lastObject];
	UIInterfaceOrientation	orient = [[UIApplication sharedApplication] statusBarOrientation];

	CGRect	wFrame = frontWindow.frame;
	CGRect	wBounds = frontWindow.bounds;

	if (UIInterfaceOrientationLandscapeLeft == orient || orient == UIInterfaceOrientationLandscapeRight)
	 {
		float t = wFrame.size.height;
		wFrame.size.height = wFrame.size.width;
		wFrame.size.height = t;
		t = wBounds.size.height;
		wBounds.size.height = wBounds.size.width;
		wBounds.size.height = t;
	 }
	
	[self.parentViewController.view setBounds:wBounds];
	[self.parentViewController.view setFrame:wFrame];
	[edlineView setBounds:wBounds];
	[edlineView setFrame:wFrame];
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
	[super dealloc];
 }


@end
