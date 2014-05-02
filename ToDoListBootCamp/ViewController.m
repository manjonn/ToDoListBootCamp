//
//  ViewController.m
//  ToDoListBootCamp
//
//  Created by Manjula Jonnalagadda on 4/30/14.
//  Copyright (c) 2014 Manjula Jonnalagadda. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"

@interface ViewController ()

@property(nonatomic,strong)NSArray *toDoItems;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.toDoItems=@[@"To Do Item 1",@"To Do Item 2",@"To Do Item 3",@"To Do Item 4"];
    self.toDoItems=[NSArray array];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    AddViewController *addViewController=(AddViewController *)[segue destinationViewController];
    addViewController.delegate=self;
    
    
}

#pragma mark - UITableViewDatasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.toDoItems count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier=@"Cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    ToDoItem *toDoItem=self.toDoItems[indexPath.row];
    cell.textLabel.text=toDoItem.task;
    cell.imageView.image=toDoItem.image;
    
    return cell;
    
}

-(void)addToDoItem:(ToDoItem *)toDoItem{
    
    self.toDoItems=[self.toDoItems arrayByAddingObject:toDoItem];
    [self.toDoItemTableView reloadData];
    
    
}


@end
