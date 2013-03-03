//
//  WebViewController.h
//  PAWS
//
//  Created by Keanu Kerr on 13-3-2.
//
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController
{
    UIWebView		* aboutView;
}

@property (nonatomic, retain) IBOutlet UIWebView	* aboutView;

@end
