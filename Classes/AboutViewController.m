//
//  AboutViewController.m
//  PAWS
//
//  Created by Greg Kerr on 13-3-2.
//
//

#import "AboutViewController.h"

@implementation AboutViewController


@synthesize aboutView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

	// Resize to match window
	[self didRotateFromInterfaceOrientation:0];
	
	// Load our "About" HTML into the WebView
	[aboutView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"about" ofType:@"html"] isDirectory:NO]]];
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
	[aboutView setBounds:wBounds];
	[aboutView setFrame:wFrame];
 }


- (void)didReceiveMemoryWarning
 {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
 }


// This is the iOS 5.x and below method of always rotating
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation { return YES; }
// These are for iOS 6
- (BOOL)shouldAutorotate:(UIInterfaceOrientation)interfaceOrientation { return YES; }
- (NSUInteger)supportedInterfaceOrientations { return UIInterfaceOrientationMaskAll; }


@end
