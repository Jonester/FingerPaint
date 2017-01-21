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
@property (weak, nonatomic) IBOutlet DrawView *drawingView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearButton:(UIBarButtonItem *)sender {
    [self.drawingView clear];
}

- (IBAction)colorSlider:(UISlider *)sender {
    
//    NSArray *colorArray = @[@(0x000000), @(0xfe0000), @(0xff7900), @(0xffb900), @(0xffde0), @(0xfcff00), @(0xd2ff00), @(0x05c000), @(0x00c0a7), @(0x0600ff), @(0x6700bf), @(0x9500c), @(0xbf0199), @(0xffffff)];

    NSArray *colorArray = @[[UIColor blackColor],
                            [UIColor redColor],
                            [UIColor orangeColor],
                            [UIColor colorWithRed:244.0/255.0 green:176.0/255.0 blue:66.0/255.0 alpha:1.0],
                            [UIColor yellowColor],
                            [UIColor colorWithRed:215.0/255.0 green:244.0/255.0 blue:66.0/255.0 alpha:1.0],
                            [UIColor colorWithRed:244.0/255.0 green:238.0/255.0 blue:66.0/255.0 alpha:1.0],
                            [UIColor greenColor],
                            [UIColor cyanColor],
                            [UIColor blueColor],
                            [UIColor purpleColor],
                            [UIColor colorWithRed:170.0/255.0 green:66.0/255.0 blue:244.0/255.0 alpha:1.0],
                            [UIColor colorWithRed:244.0/255.0 green:66.0/255.0 blue:232.0/255.0 alpha:1.0]];

    if (sender.value == colorArray.count) {
        sender.value = colorArray.count - 0.1;
    }
    self.colorView.backgroundColor = colorArray[(NSInteger)sender.value];
        
}



@end
