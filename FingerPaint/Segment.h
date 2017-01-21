//
//  LineSegment.h
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

@import UIKit;

@interface Segment : NSObject

- (instancetype)initWithPoint1: (CGPoint)point1 point2: (CGPoint)point2;

@property (nonatomic, assign) CGPoint point1;
@property (nonatomic, assign) CGPoint point2;

@end
