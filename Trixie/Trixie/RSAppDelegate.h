//
//  RSAppDelegate.h
//  Trixie
//
//  Created by Erik Stainsby on 12-05-26.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RSTrixieWindowController.h"
#import "RSRuleWindowController.h"

@interface RSAppDelegate : NSObject <NSApplicationDelegate>

@property (retain) IBOutlet RSTrixieWindowController * windowController;
@property (retain) IBOutlet RSRuleWindowController * ruleEditor;

- (IBAction)showRuleEditor:(id)sender;

@end
