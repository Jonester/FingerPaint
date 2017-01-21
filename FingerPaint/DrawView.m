//
//  DrawView.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "DrawView.h"
#import "LineSegment.h"
#import "LineModel.h"

@implementation DrawView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _lines = [NSMutableArray new];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    
    LineSegment *segment = [[LineSegment alloc]initWithPoint1:first point2:first];
    [self.lineModel.lineSegments addObject:segment];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    
    LineSegment *segment = [[LineSegment alloc]initWithPoint1:first point2:second];
    [self.lineModel.lineSegments addObject:segment];
    [self setNeedsDisplay];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

-(void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    self.lineModel = [[LineModel alloc]initWith:[UIColor blackColor]];
    UIColor *black = [UIColor blackColor];
    [black setStroke];
    
    for (LineSegment *segment in self.lineModel.lineSegments) {
        if (CGPointEqualToPoint(segment.point1, segment.point2)) {
            [path moveToPoint:segment.point1];
        }
        [path addLineToPoint:segment.point1];
        [path addLineToPoint:segment.point2];
    }
    [path stroke];
    
    for (LineModel *line in self.lines) {
        
    }
}

-(void)clear {
    [self.lineModel.lineSegments removeAllObjects];
    [self setNeedsDisplay];
}

@end
