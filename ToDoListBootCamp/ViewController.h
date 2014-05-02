//
//  ViewController.h
//  ToDoListBootCamp
//
//  Created by Manjula Jonnalagadda on 4/30/14.
//  Copyright (c) 2014 Manjula Jonnalagadda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"



@interface ViewController : UIViewController<UITableViewDataSource,AddViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *toDoItemTableView;

@end
