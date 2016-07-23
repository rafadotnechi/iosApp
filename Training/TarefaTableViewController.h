//
//  TarefaTableViewController.h
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tarefa.h"

@interface TarefaTableViewController : UITableViewController

@property Tarefa *tarefa;
@property (weak, nonatomic) IBOutlet UITextField *tarefaText;

@end
