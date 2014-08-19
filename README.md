RPMultipleImagePicker
=====================

Select multiple images from camera using RPMultipleImagePicker.

![RPMultipleImagePicker preview](http://www.renatopeterman.com.br/images/github/rpmultipleimagepicker.jpg "Preview")

Requirements
-----------

* iOS 6.1+* (not tested in iPad)
* MobileCoreServices.framework
* QuartzCore.framework

How to use
------------

Include the files from 'Classes' folder in your project.

Initialize RPMultipleImagePicker and set the source type.

```objectivec
RPMultipleImagePickerViewController *multipleImagePicker = [[RPMultipleImagePickerViewController alloc] init];
multipleImagePicker.sourceType = UIImagePickerControllerSourceTypeCamera; // or UIImagePickerControllerSourceTypePhotoLibrary if you are using iPhone emulator
```

Set selected image and show the RPMultipleImagePicker after the Image Picker View finish.

```objectivec
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
```

Take a look at the 'Example' folder for an project example.

Maintainers
------------

* [Renato Peterman](https://www.renatopeterman.com.br) ([@renatopeterman](https://twitter.com/renatopeterman))