//
//  RSRuleWindowController.h
//  Trixie
//
//  Created by Erik Stainsby on 12-06-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <RSTrixieFramework/RSTrixie.h>
#import <RSTrixieFramework/RSTrixieLoader.h>

@interface RSRuleWindowController : NSWindowController

@property (retain) IBOutlet NSTextField * actionCaption;
@property (retain) IBOutlet NSTextField * filterCaption;
@property (retain) IBOutlet NSTextField * reactionCaption;

@property (strong) NSArray * actionPlugins;
@property (strong) NSArray * filterPlugins;
@property (strong) NSArray * reactionPlugins;

@property (strong) RSTrixiePlugin * actionPlugin;
@property (strong) RSTrixiePlugin * filterPlugin;
@property (strong) RSTrixiePlugin * reactionPlugin;

@property (weak) IBOutlet NSPopUpButton *actionMenu;
@property (weak) IBOutlet NSPopUpButton *filterMenu;
@property (weak) IBOutlet NSPopUpButton *reactionMenu;

@property (weak) IBOutlet NSBox *actionPanel;
@property (weak) IBOutlet NSBox *filterPanel;
@property (weak) IBOutlet NSBox *reactionPanel;

@property (weak) IBOutlet NSButton *applyButton;
@property (weak) IBOutlet NSButton *dismissButton;

- (IBAction)dismissRuleEditor:(id)sender;

- (IBAction) selectActionPlugin:(id)sender;
- (IBAction) selectFilterPlugin:(id)sender;
- (IBAction) selectReactionPlugin:(id)sender;

@end
