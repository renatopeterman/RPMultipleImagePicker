//
//  ViewController.h
//  RPCameraMultipleImagePicker
//
//  Created by Renato Peterman on 17/08/14.
//  Copyright (c) 2014 Renato Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "RPMultipleImagePickerViewController.h"

@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationBarDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) RPMultipleImagePickerViewController *multipleImagePicker;

- (IBAction)showPicker:(id)sender;

@end
