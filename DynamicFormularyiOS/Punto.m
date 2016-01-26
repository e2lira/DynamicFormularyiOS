//
//  Punto.m
//  DynamicFormularyiOS
//
//  Created by edgar elias gonzalez lira on 19/01/16.
//  Copyright © 2016 e2lira. All rights reserved.
//

#import "Punto.h"

static NSInteger nPuntos = 0;  //variable de tipo estático

@implementation Punto
@synthesize x;
@synthesize y;

- init {
    if (self = [super init]){
        nPuntos++;
    }
    return self;
}

- initWithX:(NSInteger)paramX y:(NSInteger)paramY{
    if (self = [super init]) {
        x = paramX;
        y = paramY;
    }
    return self;
}

+ (NSString*)sistema{
    return @"Cartesiano";
}

- (void)setX:(NSInteger)paramX incremento:(NSInteger)paramSumar{
    x = paramX - paramSumar;
}

- (void)setY:(NSInteger)paramY incremento:(NSInteger)paramSumar{
    y = paramY - paramSumar;
}

+ (Punto*)suma:(Punto*)p1 :(Punto*)p2{
    Punto* sol = [[Punto alloc] init]; // es lo mismo [Punto new]
    sol->x = [p1 x] + [p2 x];
    sol->y = [p1 y] + [p2 y];
    return sol;
}

+ (Punto*)suma:(NSInteger)n, ... {
    Punto* sol = [[Punto alloc] init];
    va_list parametros;  // listado de parametros
    va_start(parametros, n); // inicialización de la lista y asignación del número de parametros
    Punto* p;
    while (n-->0) {
        p = va_arg(parametros, Punto*); // variable de parametros y el tipo de dato que va traer el parametro
        sol->x += p->x;
        sol->y += p->y;
    }
    va_end(parametros);  // se debe terminar la macro con la variable de tipo lista de parametro
    return sol;
}

- (void)dealloc{
    nPuntos--;
}

@end


