//
//  QuadTree.h
//  QuadTree
//
//  Created by Zhe Jia on 3/1/13.
//  Copyright (c) 2013 Zhe Jia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface QuadTree : NSObject

@property (nonatomic, strong) NSMutableDictionary *nodeMapping;
@property (nonatomic, strong) Node *root;

- (QuadTree *)initWithObjects:(NSArray *)objects;

@end
