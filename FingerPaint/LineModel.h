//
//  LineModel.h
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

@import  UIKit;
@class LineSegment;

@interface LineModel : NSObject

@property (nonatomic) UIColor *color;
@property (nonatomic) NSMutableArray <LineSegment *> *lineSegments;

- (instancetype)initWith: (UIColor *)color;

@end
