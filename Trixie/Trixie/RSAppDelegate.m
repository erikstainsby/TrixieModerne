//
//  RSAppDelegate.m
//  Trixie
//
//  Created by Erik Stainsby on 12-05-26.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSAppDelegate.h"

@implementation RSAppDelegate

@synthesize windowController = _windowController;
@synthesize ruleEditor = _ruleEditor;

- (void) awakeFromNib {
	self.windowController = [[RSTrixieWindowController alloc] init];
	[[self.windowController window] orderFront:self];
	
	self.ruleEditor = [[RSRuleWindowController alloc] init];
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showRuleEditor:) name:RSPopoverRequestedNotification object:nil];
}


- (IBAction)showRuleEditor:(id)sender {
	if([[self.ruleEditor window] isKeyWindow] || [[self.ruleEditor window] isVisible]) {
		[[self.ruleEditor window] orderOut:self];
	}
	else {
		[[self.ruleEditor window] makeKeyAndOrderFront:self];
	}
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	return YES;
}

@end
