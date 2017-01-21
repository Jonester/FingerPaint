//
//  DrawView.h
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Line;

@interface DrawView : UIView

@property (nonatomic) NSMutableArray <Line *> *lines;
@property (nonatomic) Line *line;

-(void)clear;
-(void)createLine: (UIColor *)color;

@end
