//
//  FifthTangramView.m
//  Tangram
//
//  Created by 袁灿 on 16/3/7.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#import "FifthTangramView.h"

@implementation FifthTangramView

- (void)drawRect:(CGRect)rect
{
    UIColor *color = COLOR(3, 169, 246, 1);
    self.backgroundColor = color;
    [color set]; //设置线条颜色
    
    float x1 = 2.0/3.0*SCREEN_WIDTH;
    float y1 = -3.0/14.0*kQtRate*x1+3.0/7.0*SCREEN_HEIGHT;
    
    self.path = [UIBezierPath bezierPath];
    [self.path moveToPoint:CGPointMake(x1, y1)];
    [self.path addLineToPoint:CGPointMake(SCREEN_WIDTH,3.0/14.0*SCREEN_HEIGHT)];
    [self.path addLineToPoint:CGPointMake(SCREEN_WIDTH, 9.0/14.0*SCREEN_HEIGHT)];
    [self.path closePath];
    [self.path fill];

    [self setMaskWithUIBezierPath:self.path];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 55, 20)];
    title.center = CGPointMake(x1+(SCREEN_WIDTH-x1)/2+20, y1+y1/2-50);
    title.text = @"七巧板五";
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont systemFontOfSize:10.0f];
    title.textAlignment = NSTextAlignmentCenter;
    [self addSubview:title];
    
    [UIView animateWithDuration:1.0
                     animations:^{
                         title.transform = CGAffineTransformRotate(CGAffineTransformScale(title.transform, 1.5, 1.5), -0.2*M_PI); //缩放+旋转
                     }];

}

@end
