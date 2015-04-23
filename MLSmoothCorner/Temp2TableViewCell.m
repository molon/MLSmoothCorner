//
//  Temp2TableViewCell.m
//  MLSmoothCorner
//
//  Created by molon on 15/4/23.
//  Copyright (c) 2015年 molon. All rights reserved.
//

#import "Temp2TableViewCell.h"
#import "UIView+MLSmoothCorner.h"

#define kBaseLabelTag 1000
#define kLabelCount 10
@interface Temp2TableViewCell()


@end

@implementation Temp2TableViewCell
+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([self class]);
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        for (NSUInteger col=0; col<kLabelCount; col++) {
            UILabel *label = [UILabel new];
            label.text = [NSString stringWithFormat:@"l%ld",col];
            label.tag = kBaseLabelTag + col;
            label.font = [UIFont systemFontOfSize:12.0f];
            label.textAlignment = NSTextAlignmentCenter;
            label.textColor = [UIColor whiteColor];
            
//            label.backgroundColor = [UIColor grayColor];
//            label.layer.cornerRadius = 4.0f;
//            label.clipsToBounds = YES;
#warning 使用这一句立马性能不同
            [label activateMLSmoothCornerWithRadius:4.0f andBackgroundColor:[UIColor grayColor] andShouldRasterize:YES];
            
            [self addSubview:label];
        }
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = self.bounds.size.width/kLabelCount-5*2;
    CGFloat height = self.bounds.size.height-5.0f*2;
    CGFloat baseX = 0.0f;
    for (NSUInteger col=0; col<kLabelCount; col++) {
        UILabel *label = (UILabel*)[self viewWithTag:kBaseLabelTag+col];
        label.frame = CGRectMake(baseX+5.0f, 5.0f, width, height);
        baseX+=width+5.0f*2;
    }
}

@end
