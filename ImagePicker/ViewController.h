//
//  ViewController.h
//  ImagePicker
//
//  Created by Codefrux on 26/12/16.
//  Copyright © 2016 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<
UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagepicker;
}
@property (strong, nonatomic) IBOutlet UIImageView *img;
- (IBAction)sender:(id)sender;
@end

