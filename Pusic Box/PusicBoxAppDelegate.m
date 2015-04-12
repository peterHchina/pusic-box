//
//  PusicBoxAppDelegate.m
//  Pusic Box
//
//  Created by peter on 15/4/8.
//  Copyright (c) 2015年 peter. All rights reserved.
//

#import "PusicBoxAppDelegate.h"

@implementation PusicBoxAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}

-(void) awakeFromNib
{
    [_musicResion setMainFrameURL:@"http://www.duole.com"];
    [_window setTitle:@"多乐音乐"];

}

- (IBAction)baiduMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://fm.baidu.com"];
    [_window setTitle:@"百度随身听"];
}

- (IBAction)nightKuMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.9ku.com/fm/"];
    [_window setTitle:@"九酷音乐"];
}

- (IBAction)qqMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://fm.qq.com"];
    [_window setTitle:@"QQ音乐"];

}

- (IBAction)sixCcc:(id)sender {
    
    [_musicResion setMainFrameURL:@"http://www.666ccc.com/fm/"];
    [_window setTitle:@"今生缘电台"];
    }

- (IBAction)sndMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.5nd.com/fm/"];
    [_window setTitle:@"SND音乐"];

}

- (IBAction)moreMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.duole.com"];
    [_window setTitle:@"多乐音乐"];

}
@end
