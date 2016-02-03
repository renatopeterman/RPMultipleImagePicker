//
//  MultipleImagePickerViewController.h
//
//  Created by Renato Peterman on 17/08/14.
//  Copyright (c) 2014 Renato Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "RPImageCell.h"

typedef void (^ RPMultipleImagePickerDoneCallback)(NSArray *images);

@interface RPMultipleImagePickerViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UINavigationBarDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, copy) RPMultipleImagePickerDoneCallback doneCallback;
@property (nonatomic, strong) UIImagePickerController *pickerController;
@property (nonatomic, strong) NSMutableArray *images;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) IBOutlet UIButton *btRemover;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, weak) IBOutlet UIView *bgView;
@property (nonatomic, readwrite) NSUInteger selectedIndex;
@property (nonatomic, readwrite) UIImagePickerControllerSourceType sourceType;

- (void)addImage:(UIImage*)image;
- (IBAction)remove:(id)sender;

@end
