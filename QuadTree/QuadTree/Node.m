//
//  Node.m
//  QuadTree
//
//  Created by Zhe Jia on 3/1/13.
//  Copyright (c) 2013 Zhe Jia. All rights reserved.
//

#import "Node.h"

@implementation Node

-(Node *) initWithObject:(id) obj{
    self = [super init];
    if (self) {
        _value = obj;
        _point = [_delegate returnCGPointFromObj];
    }
    return self;
}

- (NSString *)description {
    
    NSString *pointDescription = [NSString stringWithFormat:@"Node: Point(%f,%f)\n",self.point.x,self.point.y];
    NSString *northWestDescription = [NSString stringWithFormat:@"\tNorthWest: %@\n",self.NorthWest];
    NSString *northEastDescription = [NSString stringWithFormat:@"\tNorthEast: %@\n",self.NorthEast];
    NSString *southWestDescription = [NSString stringWithFormat:@"\tSouthWest: %@\n",self.SouthWest];
    NSString *southEastDescription = [NSString stringWithFormat:@"\tSouthEast: %@\n",self.SouthEast];
    
    return [NSString stringWithFormat:@"%@%@%@%@%@",pointDescription,northWestDescription,northEastDescription,southWestDescription,southEastDescription];
}

@end
