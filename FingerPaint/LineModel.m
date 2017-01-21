//
//  LineModel.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "LineModel.h"
#import "LineSegment.h"

@implementation LineModel


- (instancetype)initWith: (UIColor *)color
{
    self = [super init];
    if (self) {

        _color = color;
        _lineSegments = [NSMutableArray new];
        
    }
    return self;
}

-(void)storeLineSegments: (LineSegment *)lineSegments {
    for (LineSegment *segment in self.lineSegments){
        [self.lineSegments addObject:segment];
    }
}

@end
