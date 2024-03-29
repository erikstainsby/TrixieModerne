//
//  RSTrixie-constants.h
//  RSTrixieEditor
//
//  Created by Erik Stainsby on 12-02-23.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixie-constants.h"

NSString * const RSTrixieReloadJavascriptNotification = @"RSTrixieReloadJavascriptNotification";
NSString * const RSTrixieStoreNewRuleNotification = @"RSTrixieStoreNewRuleNotification";

NSString * const RSWebViewFrameDidFinishLoadNotification = @"RSWebViewFrameDidFinishLoadNotification";
NSString * const RSWebViewLeftMouseDownEventNotification = @"RSWebViewLeftMouseDownEventNotification";
NSString * const RSWebViewLeftMouseUpEventNotification = @"RSWebViewLeftMouseUpEventNotification";

NSString * const RSTRIXIE_APP_SUPPORT_DIR = @"Roaring Sky";
NSString * const RSTRIXIE_WORKING_DIR = @"Trixie";

NSString * const RSPopoverRequestedNotification = @"RSPopoverRequestedNotification";
NSString * const RSMouseEnteredLocatorNotification = @"RSMouseEnteredLocatorNotification";
NSString * const RSMouseExitedLocatorNotification = @"RSMouseExitedLocatorNotification";
NSString * const RSRemoveLocatorNotification = @"RSRemoveLocatorNotification";

NSString * const kRSTrixieIdKeyName = @"data-trixie-id";

NSString * const RSTrixieChangeActivePluginNotification = @"RSTrixieChangeActivePluginNotification";

NSString * const RSTrixieChangeActiveActionPluginNotification = @"RSTrixieChangeActiveActionPluginNotification";
NSString * const RSTrixieChangeActiveFilterPluginNotification = @"RSTrixieChangeActiveFilterPluginNotification";
NSString * const RSTrixieChangeActiveReactionPluginNotification = @"RSTrixieChangeActiveRectionPluginNotification";

int const RSLocatorStyleNone = 0;
int const RSLocatorStyleActionPending = 1;
int const RSLocatorStyleReactionPending = 2;
int const RSLocatorStyleFilterPending = 4;
int const RSLocatorStyleActionComplete = 8;
int const RSLocatorStyleReactionComplete = 16;
int const RSLocatorStyleFilterComplete = 32;

static NSInteger idnum = 0;