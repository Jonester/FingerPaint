//
//  LineSegment.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Segment.h"

@implementation Segment

- (instancetype)initWithPoint1:(CGPoint)point1 point2:(CGPoint)point2
{
    self = [super init];
    if (self) {
        _point1 = point1;
        _point2 = point2;
    }
    return self;
}

@end
