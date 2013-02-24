//
//  FlipsideViewController.m
//  MyGoogle
//
//  Created by apple on 10/12/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController


- (void)viewDidLoad {
	webView.userInteractionEnabled = true;
	// load our about page from the resource bundle
	NSString *filePath = [[NSBundle mainBundle] pathForResource:@"about" ofType:@"html"];  
	NSData* htmlData = [NSData dataWithContentsOfFile:filePath];  
	[webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@"http://www.mywebsite.com/about.html"]];  	
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
