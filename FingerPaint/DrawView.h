//
//  DrawView.h
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LineSegment;
@class LineModel;

@interface DrawView : UIView

@property (nonatomic) NSMutableArray <LineModel *> *lines;
@property (nonatomic) LineModel *lineModel;

-(void)clear;

@end
