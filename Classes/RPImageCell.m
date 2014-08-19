//
//  RPImageCell.m
//
//  Created by Renato Peterman on 17/08/14.
//  Copyright (c) 2014 Renato Peterman. All rights reserved.
//

#import "RPImageCell.h"

@implementation RPImageCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor darkGrayColor];
        
        // Image View
        self.backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        self.backgroundImageView.backgroundColor = [UIColor clearColor];
        self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.backgroundImageView];
        
        // Label Add
        text = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 45)];
        text.textAlignment = NSTextAlignmentCenter;
        text.text = @"+";
        text.font = [UIFont systemFontOfSize:32.0f];
        text.textColor = [UIColor colorWithRed:0.0f green:150.0f/255.0f blue:1.0f alpha:1.0f];
        text.backgroundColor = [UIColor clearColor];
        text.hidden = YES;
        
        [self addSubview:text];
        
    }
    return self;
}

- (void)styleImage
{
    text.hidden = YES;
    if(![self isSelected]){
        self.layer.borderWidth = 0.0f;
        self.layer.borderColor = [UIColor clearColor].CGColor;
    }
}

- (void)styleAddButton
{
    text.hidden = NO;
    self.layer.borderWidth = 3.0f;
    self.layer.borderColor = [UIColor colorWithRed:0.26f green:0.26f blue:0.26f alpha:1.0].CGColor;
}

- (void)setSelected:(BOOL)selected
{
    if(selected){
        self.layer.borderColor = [UIColor colorWithRed:0.0f green:150.0f/255.0f blue:1.0f alpha:1.0f].CGColor;
        self.layer.borderWidth = 3.0f;
    }else{
        self.layer.borderColor = [UIColor clearColor].CGColor;
        self.layer.borderWidth = 0.0f;
    }
}

@end
