//
//  ViewController.m
//  FingerPaint
//
//  Created by Chris Jones on 2017-01-20.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ViewController.h"
#import "LineSegment.h"
#import "DrawView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIImageView *colorPalette;
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;
@property (weak, nonatomic) IBOutlet DrawView *drawingView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//NSArray *colorArray = @[@(0x000000), @(0xfe0000), @(0xff7900), @(0xffb900), @(0xffde0), @(0xfcff00), @(0xd2ff00), @(0x05c000), @(0x00c0a7), @(0x0600ff), @(0x6700bf), @(0x9500c), @(0xbf0199), @(0xffffff)];
//
//    for (int i = 0; i <= colorArray.count - 1; i++) {
//        self.colorView.backgroundColor = colorArray[i];
//        self.colorSlider.value = [colorArray[i] integerValue];
//    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)clearButton:(UIBarButtonItem *)sender {
    [self.drawingView clear];
}


@end
