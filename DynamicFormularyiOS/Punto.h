//
//  Punto.h
//  DynamicFormularyiOS
//
//  Created by edgar elias gonzalez lira on 19/01/16.
//  Copyright © 2016 e2lira. All rights reserved.
//

#ifndef Punto_h
#define Punto_h


#endif /* Punto_h */

#import <Foundation/Foundation.h>

@interface Punto : NSObject{
    // Variables de instancia
    NSInteger x;
    NSInteger y;
}

// property genera los setter/getter para las variables x, y
@property NSInteger x;
@property NSInteger y;

/* -------------------------------------------
 @property sustituye el realizar la construcción de los metodos de instancia
 para las variables de clase creadas
 
- (NSInteger)x;
- (void) setX:(NSInteger)paramX;
- (NSInteger)y;
- (void) setY:(NSInteger)paramY;
------------------------------------------- */

- initWithX: (NSInteger) paramX y: (NSInteger)paramY;
- init;
+ (NSString*) sistema; // class method - método de clase
- (void) setX:(NSInteger)paramX incremento: (NSInteger)paramSumar; // instance method - método de instancia
- (void) setY:(NSInteger)paramY incremento: (NSInteger)paramSumar;

+ (Punto*) suma: (Punto*)p1 :(Punto*)p2; // class method - método de clase
+ (Punto*)suma:(NSInteger) n ,...;  // class method - método de clase
- (void)dealloc;

@end