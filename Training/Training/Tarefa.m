//
//  Tarefa.m
//  Training
//
//  Created by Trainning Educational on 23/07/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import "Tarefa.h"

@implementation Tarefa

-(instancetype)initWithDesc: (NSString *) desc {
    
    if(self = [super init]) {
    self.desc=desc;
    }
    return self;
}

-(NSString *) description {
    return self.desc;
}
@end
