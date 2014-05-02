//
//  AddViewController.m
//  ToDoListBootCamp
//
//  Created by Manjula Jonnalagadda on 5/1/14.
//  Copyright (c) 2014 Manjula Jonnalagadda. All rights reserved.
//

#import "AddViewController.h"
#import "ToDoItem.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addEntry:(UIButton *)sender {
    
    ToDoItem *toDoItem=[[ToDoItem alloc]init];
    toDoItem.task=self.toDoItemTextField.text;
    toDoItem.image=self.imageView.image;
    
    if ([self.delegate respondsToSelector:@selector(addToDoItem:)]) {
        
        [self.delegate addToDoItem:toDoItem];
        
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
}

- (IBAction)addImage:(UIBarButtonItem *)sender {
    
    UIImagePickerController *imagePicker=[[UIImagePickerController alloc]init];
    imagePicker.delegate=self;
    imagePicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:NULL];
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage *image=info[UIImagePickerControllerOriginalImage];
    self.imageView.image=image;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    
}
@end
