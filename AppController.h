//
//  AppController.h
//  MyQuartzTest
//
//  Created by Ricky Nelson on 12/19/09.
//  Copyright Lark Software, LLC. 2009 . All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>

@interface AppController : NSObject 
{
    IBOutlet QCView* qcView;
	IBOutlet NSTextField* tfString;
}

//- (void)textDidEndEditing:(NSNotification *)aNotification;
- (void)controlTextDidEndEditing:(NSNotification *)aNotification;

@end
