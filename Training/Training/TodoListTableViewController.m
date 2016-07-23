//
//  TodoListTableViewController.m
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import "TodoListTableViewController.h"
#import "Tarefa.h"
#import "TodoListTableViewCell.h"
#import "TarefaTableViewController.h"
@interface TodoListTableViewController ()

@end

@implementation TodoListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = [[NSMutableArray alloc] init];
    
    Tarefa *t0 = [[Tarefa alloc] init];
    
    t0.desc = @"Pogchamp";
    t0.isImportant= NO;
    [self.array addObject:t0];
    
    Tarefa *t1 = [[Tarefa alloc] initWithDesc:@"Kappa"];
    t1.isImportant = YES;
    [self.array addObject:t1];
    
    NSLog(@"%@", self.array);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Tarefa *t = self.array[indexPath.row];
    
     TodoListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TodoCell" forIndexPath:indexPath];
    if (t.isImportant) {
        cell.text0.textColor = [UIColor redColor];
    }
     cell.text0.text = t.desc;
     cell.tarefa = t;
    // Configure the cell...
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"SegueTarefa"]) {
        
        TodoListTableViewCell *cell = sender;
        
        TarefaTableViewController *tvc = segue.destinationViewController;
        
        tvc.tarefa = cell.tarefa;
        
        
        
    }

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
