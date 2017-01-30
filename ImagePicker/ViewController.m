//
//  ViewController.m
//  ImagePicker
//
//  Created by Codefrux on 26/12/16.
//  Copyright © 2016 codefrux. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    imagepicker=[[UIImagePickerController alloc]init];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)imagePickercontroller:(UIImagePickerController *)picker didFinsihPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *originalImage=[info objectForKey:UIImagePickerControllerOriginalImage];
    _img.image=originalImage;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sender:(id)sender {
    imagepicker.delegate=self;
    imagepicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagepicker animated:YES completion:nil];
    

}
@end
