//
//  AddViewController.h
//  ToDoListBootCamp
//
//  Created by Manjula Jonnalagadda on 5/1/14.
//  Copyright (c) 2014 Manjula Jonnalagadda. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDoItem;

@protocol AddViewControllerDelegate <NSObject>

-(void)addToDoItem:(ToDoItem *)toDoItem;

@end

@interface AddViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *toDoItemTextField;
@property(weak,nonatomic)id<AddViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)addEntry:(UIButton *)sender;
- (IBAction)addImage:(UIBarButtonItem *)sender;

@end
