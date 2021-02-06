#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray * objects;
@end

@implementation ViewController

 - (void)loadView {
	[super loadView];

	_objects = [NSMutableArray array];

self.view.backgroundColor = [UIColor whiteColor];


        UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.frame];

NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:nil];
        NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
        //Append javascript
        //htmlString = [htmlString stringByAppendingString:script];
        
  
  [webView loadHTMLString:htmlString baseURL:nil];
  [self.view addSubview:webView];

}

@end


}

@end
