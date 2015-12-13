//
//  PusicBoxAppDelegate.h
//  Pusic Box
//
//  Created by peter on 15/4/8.
//  Copyright (c) 2015年 peter. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "PusicBoxTitlebarAccessoryViewController.h"
@class MyTitleView;
@interface PusicBoxAppDelegate : NSObject <NSApplicationDelegate>
{
    PusicBoxTitlebarAccessoryViewController *titleBarController;
    NSArray * dotbutton;
}
@property (weak) IBOutlet NSTextField *title;
@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *musicResion;
- (IBAction)baiduMusic:(id)sender;
- (IBAction)nightKuMusic:(id)sender;
- (IBAction)qqMusic:(id)sender;
- (IBAction)sixCcc:(id)sender;
- (IBAction)sndMusic:(id)sender;
- (IBAction)moreMusic:(id)sender;
@property (weak) IBOutlet NSButton *QQMuisic;
@property (weak) IBOutlet NSButton *sndMuisc;
@property (weak) IBOutlet NSButton *sixCcc;
@property (weak) IBOutlet NSButton *duoleButton;
@property (weak) IBOutlet NSButton *nightKu;
@property (weak) IBOutlet NSButton *baiduButton;
@property (weak) IBOutlet NSImageView *dott0;
@property (weak) IBOutlet NSImageView *dott1;
@property (weak) IBOutlet NSImageView *dott2;
@property (weak) IBOutlet NSImageView *dott3;
@property (weak) IBOutlet NSImageView *dott4;
@property (weak) IBOutlet NSImageView *dott5;
- (void)setButtonColor:(NSButton *)button andColor:(NSColor *)color ;
@end
