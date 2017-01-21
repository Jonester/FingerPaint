//
//  LineModel.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Line.h"
#import "Segment.h"

@implementation Line


- (instancetype)initWith: (UIColor *)color
{
    self = [super init];
    if (self) {

        _color = color;
        _segments = [NSMutableArray new];
        
    }
    return self;
}

@end
