//
//  BSGWebViewDelegate.m
//  Petites Musiques de Train
//
//  Created by Mickaël Floc'hlay on 22/10/2014.
//  Copyright (c) 2014 Bootstragram. All rights reserved.
//

#import "BSGWebViewDelegate.h"

@implementation BSGWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request
    navigationType:(UIWebViewNavigationType)navigationType {
    NSLog(@"loadingRequest: %@", (webView.loading ? @"yes" : @"no"));
    return TRUE;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"didStartLoad: %@", (webView.loading ? @"yes" : @"no"));
    [self.spinner startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"didFinishLoad: %@", (webView.loading ? @"yes" : @"no"));
    [self.spinner stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"didFailLoadWithError:%@ %@", error, (webView.loading ? @"yes" : @"no"));
    [self.spinner stopAnimating];
}

@end
