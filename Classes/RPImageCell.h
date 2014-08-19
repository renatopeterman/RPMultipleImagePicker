//
//  RPImageCell.h
//
//  Created by Renato Peterman on 17/08/14.
//  Copyright (c) 2014 Renato Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPImageCell : UICollectionViewCell {
    UILabel *text;
}

@property (nonatomic, strong) UIImageView *backgroundImageView;

- (void)styleImage;
- (void)styleAddButton;

@end
