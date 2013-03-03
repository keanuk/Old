//
//  WebViewController.h
//  PAWS
//
//  Created by Keanu Kerr on 13-3-2.
//
//

#import <UIKit/UIKit.h>

@interface EdlineViewController : UIViewController
 {
    UIWebView		* edlineView;
 }

@property (nonatomic, retain) IBOutlet UIWebView	* edlineView;

@end
