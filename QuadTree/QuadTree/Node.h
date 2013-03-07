//
//  Node.h
//  QuadTree
//
//  Created by Zhe Jia on 3/1/13.
//  Copyright (c) 2013 Zhe Jia. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol processObjToNode <NSObject>

-(CGPoint)returnCGPointFromObj;

@end

@interface Node : NSObject

@property (nonatomic, assign) id <processObjToNode> delegate;
@property (nonatomic, strong) Node *NorthWest;
@property (nonatomic, strong) Node *NorthEast;
@property (nonatomic, strong) Node *SouthWest;
@property (nonatomic, strong) Node *SouthEast;
@property (nonatomic, strong) id value;
@property (nonatomic, assign) CGPoint point;

-(Node *) initWithObject:(id) obj;

-(NSString *)description;

@end
