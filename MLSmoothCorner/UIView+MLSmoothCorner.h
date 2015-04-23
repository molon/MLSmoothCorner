//
//  UIView+MLSmoothCorner.h
//  MLSmoothCorner
//
//  Created by molon on 15/4/23.
//  Copyright (c) 2015年 molon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MLSmoothCorner)

/**
 *  activate SmoothCorner with corner radius and backgroundcolor
 */
- (void)activateMLSmoothCornerWithRadius:(CGFloat)radius andBackgroundColor:(UIColor*)color andShouldRasterize:(BOOL)shouldRasterize;

@end
