//
//  RSLocatorViewController.h
//  Trixie
//
//  Created by Erik Stainsby on 12-04-14.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RSLocatorView.h"

@class RSWebView;

@interface RSLocatorViewController : NSViewController

@property (retain) IBOutlet NSButton * button;
@property (retain) IBOutlet DOMElement * node;



@end
