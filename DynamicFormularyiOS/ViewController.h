//
//  ViewController.h
//  DynamicFormularyiOS
//
//  Created by Edgar Lira on 13/01/16.
//  Copyright © 2016 e2lira. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextFieldCell *textX;

@property (weak) IBOutlet NSTextFieldCell *textY;

- (IBAction)buttonProcesar:(id)sender;

- (void)mouseDown:(NSEvent *)theEvent;
- (void)mouseUp:(NSEvent *)theEvent;

@end

