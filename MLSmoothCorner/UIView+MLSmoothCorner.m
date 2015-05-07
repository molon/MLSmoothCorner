//
//  UIView+MLSmoothCorner.m
//  MLSmoothCorner
//
//  Created by molon on 15/4/23.
//  Copyright (c) 2015年 molon. All rights reserved.
//

#import "UIView+MLSmoothCorner.h"

@implementation UIView (MLSmoothCorner)

- (void)setLayerBackgroundColor:(UIColor*)color
{
    self.backgroundColor = [UIColor clearColor];
    self.layer.backgroundColor = color.CGColor;
}

- (void)setLayerCornerRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = NO;
}

- (void)setLayerShouldRasterize:(BOOL)shouldRasterize
{
    if (shouldRasterize) {
        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    }
    self.layer.shouldRasterize = shouldRasterize;
}

- (void)activateMLSmoothCornerWithRadius:(CGFloat)radius andBackgroundColor:(UIColor*)color andShouldRasterize:(BOOL)shouldRasterize
{
    [self setLayerCornerRadius:radius];
    if (color) {
        [self setLayerBackgroundColor:color];
    }
    [self setLayerShouldRasterize:shouldRasterize];
}


@end
