//
//  QuadTree.m
//  QuadTree
//
//  Created by Zhe Jia on 3/1/13.
//  Copyright (c) 2013 Zhe Jia. All rights reserved.
//

#import "QuadTree.h"
#import "NSArray+Extras.h"

@implementation QuadTree

- (void)createWithObjects:(NSArray *)objects{
    
    //process objects into Nodes
    NSArray *sortedArrays = [self processObjsToSortedArraysWithArray:objects];
    
    //Pick the element in the middle of the list as rep value for root
    
    //CGPoint test = [objects objectAtIndex:0];
    
    
}

- (NSArray *)processObjsToSortedArraysWithArray:(NSArray *) objects{
    
    NSMutableArray *sortedByX = [NSMutableArray array];
    NSMutableArray *sortedByY = [NSMutableArray array];
            
    
    for (id object in objects) {
        
        Node *newNode = [[Node alloc]initWithObject:object];
        
        int xInsertIndex = [sortedByX indexForInsertingObject:newNode sortedUsingBlock:^(id a, id b){
            Node *node1 = (Node *) a;
            Node *node2 = (Node *) b;
            return [[NSNumber numberWithFloat:node1.point.x] compare: [NSNumber numberWithFloat:node2.point.x]];
        }];
        int yInsertIndex = [sortedByX indexForInsertingObject:newNode sortedUsingBlock:^(id a, id b){
            Node *node1 = (Node *) a;
            Node *node2 = (Node *) b;
            return [[NSNumber numberWithFloat:node1.point.y] compare: [NSNumber numberWithFloat:node2.point.y]];
        }];
        
        [sortedByX insertObject:newNode atIndex:xInsertIndex];
        [sortedByY insertObject:newNode atIndex:yInsertIndex];
    }
    
    return @[sortedByX, sortedByY];
}

@end
