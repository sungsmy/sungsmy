//
//  WebViewController.m
//  diarywithjesus
//
//  Created by sungsmy on 2014. 5. 15..
//  Copyright (c) 2014년 sungsmy. All rights reserved.
//

#import "WebViewController.h"

#define LOAD_URL @"http://www.naver.com"

@interface WebViewController ()

@end

@implementation WebViewController

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
    // Do any additional setup after loading the view.
    
    [self drawWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Draw webview

- (void)drawWebView {
    CGRect statusBar = [[UIApplication sharedApplication] statusBarFrame];
    CGFloat x = [UIScreen mainScreen].bounds.origin.x;
    CGFloat y = [UIScreen mainScreen].bounds.origin.y;
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height - statusBar.size.height;
    
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setDelegate:self];
    [webView setFrame:CGRectMake(x, y, width, height)];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:LOAD_URL]]];
    [self.view addSubview:webView];
}

#pragma mark - UIWebView Delegate

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"error : %@", error);
}

@end
