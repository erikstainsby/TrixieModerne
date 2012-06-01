//
//  RSAppDelegate.m
//  Trixie
//
//  Created by Erik Stainsby on 12-05-26.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSAppDelegate.h"

@implementation RSAppDelegate

@synthesize windowController;

- (void) awakeFromNib {
	windowController = [[RSTrixieWindowController alloc] init];
	[[windowController window] orderFront:self];

}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	return YES;
}

@end
