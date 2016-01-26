//
//  ViewController.m
//  DynamicFormularyiOS
//
//  Created by Edgar Lira on 13/01/16.
//  Copyright © 2016 e2lira. All rights reserved.
//

#import "ViewController.h"
#import "Punto.h"

// I just add a comment

@implementation ViewController
@synthesize textX;
@synthesize textY;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // hswqhbjqw the view, if already loaded.
}

- (IBAction)buttonProcesar:(id)sender {
    Punto* point = [[Punto alloc] init];
    [point setX: [textX integerValue]];
    [point setY: [textY integerValue]];
    NSLog(@"textX: %@, textY: %@", [textX stringValue], [textY stringValue]);
    NSLog(@"pointX: %ld, pointY: %ld", [point x], [point y]);
}

- (void)mouseDown:(NSEvent *)theEvent {
    NSLog(@"Mouse Down");
    NSPoint event_location = [theEvent locationInWindow];
    NSLog(@"Clicked %f %f",event_location.x,event_location.y);
}

- (void)mouseUp:(NSEvent *)theEvent {
    NSLog(@"Mouse Up");
    NSPoint event_location = [theEvent locationInWindow];
    NSLog(@"Release %f %f",event_location.x,event_location.y);
}



@end
