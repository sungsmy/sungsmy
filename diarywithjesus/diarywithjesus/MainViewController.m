//
//  MainViewController.m
//  diarywithjesus
//
//  Created by sungsmy on 2014. 5. 14..
//  Copyright (c) 2014년 sungsmy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    CGRect statusBar = [[UIApplication sharedApplication] statusBarFrame];
    NSLog(@"statusBar height : %f", statusBar.size.height);
    // 480 == 3.5
    // 568 == 4
    CGFloat x = [UIScreen mainScreen].bounds.origin.x;
    CGFloat y = [UIScreen mainScreen].bounds.origin.y;
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height - statusBar.size.height;
    NSLog(@"x : %f, y : %f, width : %f, height : %f", x, y, width, height);
    
//    [_webView sizeToFit];
    [_webView setFrame:CGRectMake(x, y, width, height)];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.naver.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebView

- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"webViewDidFinishLoad");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"didFailLoadWithError");
    NSLog(@"error : %@", error);
}

@end
