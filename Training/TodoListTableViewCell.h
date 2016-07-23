//
//  TodoListTableViewCell.h
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tarefa.h"

@interface TodoListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *Label0;
@property (weak, nonatomic) IBOutlet UITextField *text0;
@property Tarefa *tarefa;

@end
