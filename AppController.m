//
//  AppController.m
//  MyQuartzTest
//
//  Created by Ricky Nelson on 12/19/09.
//  Copyright Lark Software, LLC. 2009 . All rights reserved.
//

#import "AppController.h"

@implementation AppController
 
- (void) awakeFromNib
{
	if(![qcView loadCompositionFromFile:[[NSBundle mainBundle] pathForResource:@"Text" ofType:@"qtz"]]) {
		NSLog(@"Could not load composition");
	}

	[qcView setValue:@"Lark Software" forInputKey:@"String"];
}

- (void)windowWillClose:(NSNotification *)notification 
{
	[NSApp terminate:self];
}

- (void)controlTextDidEndEditing:(NSNotification *)aNotification
//- (void)textDidEndEditing:(NSNotification *)aNotification
{
	[qcView setValue:[tfString stringValue] forInputKey:@"String"];
}

@end
