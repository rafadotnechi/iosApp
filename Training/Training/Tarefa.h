//
//  Tarefa.h
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tarefa : NSObject

@property NSString *desc;
@property BOOL isImportant;

-(instancetype)initWithDesc: (NSString *) desc;

@end
