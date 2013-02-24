//
//  MainViewController.m
//  MyGoogle
//
//  Created by apple on 10/12/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

@implementation MainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		// Custom initialization
	}
	return self;
}

 - (void)viewDidLoad {
	 // set userInteractionEnabled to true so the user can click links
	 webView.userInteractionEnabled = true;
	 // navigate to google
	 [webView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"http://www.edline.net"]]];
 }


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[super dealloc];
}


@end
