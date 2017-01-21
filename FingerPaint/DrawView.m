//
//  DrawView.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "DrawView.h"
#import "Segment.h"
#import "Line.h"

@implementation DrawView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _lines = [NSMutableArray new];
        _line = [[Line alloc]initWith:[UIColor blackColor]];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    
    Segment *segment = [[Segment alloc]initWithPoint1:first point2:first];
    Line *line = self.lines.lastObject;
    [line.segments addObject:segment];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    
    Segment *segment = [[Segment alloc]initWithPoint1:first point2:second];
    Line *line = self.lines.lastObject;
    [line.segments addObject:segment];
    [self setNeedsDisplay];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

-(void)drawRect:(CGRect)rect {
    
    for (Line *line in self.lines) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        path.lineWidth = 5.0;
        path.lineCapStyle = kCGLineCapRound;
        [line.color setStroke];
        path.miterLimit = 2;
        
        for (Segment *segment in line.segments) {
            
            if (CGPointEqualToPoint(segment.point1, segment.point2)) {
                    [path moveToPoint:segment.point1];
                continue;
                }
            [path addLineToPoint:segment.point1];
            [path addLineToPoint:segment.point2];
        }
        [path stroke];
    }
    [self setNeedsDisplay];
}

-(void)createLine: (UIColor *)color {
    Line *line = [[Line alloc]initWith:color];
    [self.lines addObject:line];
}

-(void)clear {
    [self.line.segments removeAllObjects];
    [self.lines removeAllObjects];
    [self setNeedsDisplay];
}

@end
