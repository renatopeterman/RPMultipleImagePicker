//
//  ViewController.m
//  RPCameraMultipleImagePicker
//
//  Created by Renato Peterman on 17/08/14.
//  Copyright (c) 2014 Renato Peterman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)showPicker:(id)sender {
    
    // RPMultipleImagePickerViewController initialization
    self.multipleImagePicker = [[RPMultipleImagePickerViewController alloc] init];
    self.multipleImagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    // UIImagePickerController initialization
    UIImagePickerController *controller = [[UIImagePickerController alloc] init];
    controller.delegate = self;
    
    // Camera
    // controller.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    // Photo Library
    controller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:controller animated:YES completion:nil];
    
}

#pragma mark - Image Picker delegate

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    UIImage *selectedImage;
    
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeImage, 0) == kCFCompareEqualTo) {
        
        selectedImage = (UIImage *) [info objectForKey: UIImagePickerControllerOriginalImage];
        
        // Add image to RPMultipleImagePickerViewController
        [self.multipleImagePicker addImage:selectedImage];
        
        // RPMultipleImagePicker Done callback
        self.multipleImagePicker.doneCallback = ^(NSArray *images) {
            
            // Get the images
            
        };
        
        // Show RPMultipleImagePickerViewController
        [picker pushViewController:self.multipleImagePicker animated:YES];
        
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    UIImage *originalImage, *editedImage, *imageToUse;
    
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeImage, 0) == kCFCompareEqualTo) {
        
        // editedImage = (UIImage *) [info objectForKey: UIImagePickerControllerEditedImage]; // Edited image if available
        originalImage = (UIImage *) [info objectForKey: UIImagePickerControllerOriginalImage];
        imageToUse = editedImage ? editedImage : originalImage;
        
        // Add image to RPMultipleImagePickerViewController
        [self.multipleImagePicker addImage:imageToUse];
        
        // Done callback
        self.multipleImagePicker.doneCallback = ^(NSArray *images) {
            
            NSLog(@"Images: %@", images);
            
        };
        
        // Show RPMultipleImagePickerViewController
        [picker pushViewController:self.multipleImagePicker animated:YES];
        
    }
}

@end
