//
//  RSRuleWindowController.m
//  Trixie
//
//  Created by Erik Stainsby on 12-06-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSRuleWindowController.h"
#import "NSView+RSPositionView.h"

@interface RSRuleWindowController ()

@end

@implementation RSRuleWindowController

@synthesize actionCaption=_actionCaption;
@synthesize filterCaption=_filterCaption;
@synthesize reactionCaption=_reactionCaption;

@synthesize actionPlugins=_actionPlugins;
@synthesize filterPlugins=_filterPlugins;
@synthesize reactionPlugins=_reactionPlugins;

@synthesize actionPlugin=_actionPlugin;
@synthesize filterPlugin=_filterPlugin;
@synthesize reactionPlugin=_reactionPlugin;

@synthesize actionMenu = _actionMenu;
@synthesize filterMenu = _filterMenu;
@synthesize reactionMenu = _reactionMenu;

@synthesize actionPanel=_actionPanel;
@synthesize filterPanel=_filterPanel;
@synthesize reactionPanel=_reactionPanel;

@synthesize dismissButton=_dismissButton;
@synthesize applyButton=_applyButton;


- (id)init
{
    self = [super initWithWindowNibName:@"RSRuleWindow"];
    if (self) {
        // Initialization code here.

	RSTrixieLoader *loader = [[RSTrixieLoader alloc] init];
	
	self.actionPlugins = [loader loadPluginsWithPrefix:@"Action" ofType:@"bundle"];
	self.filterPlugins = [loader loadPluginsWithPrefix:@"Filter" ofType:@"bundle"];
	self.reactionPlugins = [loader loadPluginsWithPrefix:@"Reaction" ofType:@"bundle"];
	loader = nil;

	}
	return self;
}


- (void) awakeFromNib {
		
	NSMenu * m1 = [[NSMenu alloc] initWithTitle:@"Actions"];
	for( RSActionPlugin * p in self.actionPlugins) {
		NSMenuItem * item = [[NSMenuItem alloc] initWithTitle:[p pluginName] action:@selector(selectActionPlugin:) keyEquivalent:@""];
		[item setRepresentedObject: p];
		[m1 addItem:item];
		//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [p pluginName]);
	}
	[self.actionMenu setMenu:m1];
	m1 = nil;
	
	NSMenu * m2 = [[NSMenu alloc] initWithTitle:@"Filters"];
	for( RSFilterPlugin * p in self.filterPlugins) {
		NSMenuItem * item = [[NSMenuItem alloc] initWithTitle:[p pluginName] action:@selector(selectFilterPlugin:) keyEquivalent:@""];
		[item setRepresentedObject: p];
		[m2 addItem:item];
		//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [p pluginName]);
	}
	[self.filterMenu setMenu:m2];
	m2 = nil;
	
	NSMenu * m3 = [[NSMenu alloc] initWithTitle:@"Reactions"];
	for( RSReactionPlugin * p in self.reactionPlugins) {
		NSMenuItem * item = [[NSMenuItem alloc] initWithTitle:[p pluginName] action:@selector(selectReactionPlugin:) keyEquivalent:@""];
		[item setRepresentedObject: p];
		[m3 addItem:item];
		//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [p pluginName]);
	}
	[self.reactionMenu setMenu:m3];
	m3 = nil;
	
	self.actionPlugin = [self.actionPlugins objectAtIndex:0];
	self.filterPlugin = [self.filterPlugins objectAtIndex:0];
	self.reactionPlugin = [self.reactionPlugins objectAtIndex:0];
	

}

- (void)windowDidLoad
{
    [super windowDidLoad];
   
}


- (IBAction)dismissRuleEditor:(id)sender {
	[[self window] orderOut:self];
	// prepare for next use - reset buttons
	[self.applyButton setState:NSOnState];
	[self.dismissButton setState:NSOnState];
}

- (IBAction) selectActionPlugin:(id)sender {
	RSActionPlugin * rep = [sender representedObject];
//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [rep pluginName]);
	NSPoint pt = self.actionCaption.frame.origin;
	pt.x -= 16;
	[rep.view setFrameTopLeftPoint: pt];
	[[self.window contentView] replaceSubview:self.actionPanel with:rep.view];
	
	self.actionPanel = (NSBox*)rep.view;
}

- (IBAction) selectFilterPlugin:(id)sender {
	RSFilterPlugin * rep = [sender representedObject];
//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [rep pluginName]);
	NSPoint pt = self.filterCaption.frame.origin;
	pt.x -= 16;
	[rep.view setFrameTopLeftPoint: pt];
	[[self.window contentView] replaceSubview:self.filterPanel with:rep.view];
	
	self.filterPanel = (NSBox*)rep.view;
}

- (IBAction) selectReactionPlugin:(id)sender {
	RSReactionPlugin * rep = [sender representedObject];
//	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, [rep pluginName]);
	NSPoint pt = self.reactionCaption.frame.origin;
	pt.x -= 16;
	[rep.view setFrameTopLeftPoint: pt];
	[[self.window contentView] replaceSubview:self.reactionPanel with:rep.view];
	
	self.reactionPanel = (NSBox*)rep.view;
}


@end
