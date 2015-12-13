//
//  PusicBoxAppDelegate.m
//  Pusic Box
//
//  Created by peter on 15/4/8.
//  Copyright (c) 2015年 peter. All rights reserved.
//

#import "PusicBoxAppDelegate.h"
#import "PusicBoxTitlebarAccessoryViewController.h"
@implementation PusicBoxAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [_window setBackgroundColor:[NSColor colorWithPatternImage:[NSImage imageNamed:@"test_01"]]];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.window makeKeyAndOrderFront:nil];
    });
}

-(void) awakeFromNib
{
//    [_musicResion setMainFrameURL:@"http://www.duole.com"];
//    [_window setTitle:@"多乐音乐"];
    dotbutton = [NSArray arrayWithObjects:_dott0,_dott1, _dott2,_dott3, _dott4, _dott5, nil];
    [_musicResion setMainFrameURL:@"http://fm.baidu.com"];
    [_title setStringValue:@"百度随身听"];
    [self setVisibleImageDot:0];
    [self setTextColor:_duoleButton color:[NSColor whiteColor]];
    [self setTextColor:_sndMuisc color:[NSColor whiteColor]];
    [self setTextColor:_baiduButton color:[NSColor whiteColor]];
    [self setTextColor:_nightKu color:[NSColor whiteColor]];
    [self setTextColor:_QQMuisic color:[NSColor whiteColor]];
    [self setTextColor:_sixCcc color:[NSColor whiteColor]];
    
//     [self setButtonColor:_baiduButton andColor:[NSColor whiteColor]];
}

- (void)setTextColor:(NSButton *)button color:(NSColor *)textColor

{
    
    NSMutableAttributedString *attrTitle = [[NSMutableAttributedString alloc] initWithAttributedString:[button attributedTitle]];
    
    NSUInteger len = [attrTitle length];
    
    NSRange range = NSMakeRange(0, len);
    
    [attrTitle addAttribute:NSForegroundColorAttributeName value:textColor range:range];
    [attrTitle fixAttributesInRange:range];
    
    [button setAttributedTitle:attrTitle];
    
    attrTitle = nil;
    
    [button setNeedsDisplay:YES];
    
}



- (IBAction)baiduMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://fm.baidu.com"];
    [_title setStringValue:@"百度随身听"];
    [self setVisibleImageDot:0];
    
}

- (IBAction)nightKuMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.9ku.com/fm/"];
    [_title setStringValue:@"九酷音乐"];
    [self setVisibleImageDot:2];

}

- (IBAction)qqMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://fm.qq.com"];
    [_title setStringValue:@"QQ音乐"];
    [self setVisibleImageDot:3];


}

- (IBAction)sixCcc:(id)sender {
    
    [_musicResion setMainFrameURL:@"http://www.666ccc.com/fm/"];
    [_title setStringValue:@"今生缘电台"];
    [self setVisibleImageDot:4];

    }

- (IBAction)sndMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.5nd.com/fm/"];
    [_title setStringValue:@"SND电台"];
    [self setVisibleImageDot:5];


}

- (IBAction)moreMusic:(id)sender {
    [_musicResion setMainFrameURL:@"http://www.duole.com"];
    [_title setStringValue:@"多乐音乐"];
    [self setVisibleImageDot:1];


}

- (void)setButtonColor:(NSButton *)button andColor:(NSColor *)color {
    if (color == nil) {
        color = [NSColor whiteColor];
    }
    
    int fontSize = 14;
    NSFont *font = [NSFont systemFontOfSize:fontSize];
    NSDictionary * attrs = [NSDictionary dictionaryWithObjectsAndKeys:font,
                            NSFontAttributeName,
                            color,
                            NSForegroundColorAttributeName,
                            nil];
    
    NSAttributedString* attributedString = [[NSAttributedString alloc] initWithString:[button title] attributes:attrs];
    //    [attributedString setAlignment:NSCenterTextAlignment range:NSMakeRange(0, [attributedString length])];
    //    [button setAttributedTitle:attributedString];
    [button setAttributedAlternateTitle:attributedString];
    
}
    
    -(NSAttributedString *) getString:(NSString *) title :(NSColor *)color
    {
        if (color == nil) {
            color = [NSColor whiteColor];
        }
        int fontSize = 14;
        NSFont *font = [NSFont systemFontOfSize:fontSize];
        NSDictionary * attrs = [NSDictionary dictionaryWithObjectsAndKeys:font,
                                NSFontAttributeName,
                                color,
                                NSForegroundColorAttributeName,
                                nil];
        
        NSAttributedString* attributedString = [[NSAttributedString alloc] initWithString:title attributes:attrs];
        return attributedString;
    }


-(void) setVisibleImageDot:(int) position
{
    
    for (int i =0 ; i<[dotbutton count];i++) {
        [dotbutton[i] setHidden:YES];
    }
    [[dotbutton objectAtIndex:position] setHidden:NO];
}
@end
