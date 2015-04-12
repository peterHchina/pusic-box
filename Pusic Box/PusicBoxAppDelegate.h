//
//  PusicBoxAppDelegate.h
//  Pusic Box
//
//  Created by peter on 15/4/8.
//  Copyright (c) 2015年 peter. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
@interface PusicBoxAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *musicResion;
- (IBAction)baiduMusic:(id)sender;
- (IBAction)nightKuMusic:(id)sender;
- (IBAction)qqMusic:(id)sender;
- (IBAction)sixCcc:(id)sender;
- (IBAction)sndMusic:(id)sender;
- (IBAction)moreMusic:(id)sender;

@end
